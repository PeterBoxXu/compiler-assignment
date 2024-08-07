(* ll ir compilation -------------------------------------------------------- *)

open Ll
open X86
open Asm

(* Overview ----------------------------------------------------------------- *)

(* We suggest that you spend some time understanding this entire file and
   how it fits with the compiler pipeline before making changes.  The suggested
   plan for implementing the compiler is provided on the project web page.
*)


(* helpers ------------------------------------------------------------------ *)

(* Map LL comparison operations to X86 condition codes *)
let compile_cnd = function
  | Ll.Eq  -> X86.Eq
  | Ll.Ne  -> X86.Neq
  | Ll.Slt -> X86.Lt
  | Ll.Sle -> X86.Le
  | Ll.Sgt -> X86.Gt
  | Ll.Sge -> X86.Ge



(* locals and layout -------------------------------------------------------- *)

(* One key problem in compiling the LLVM IR is how to map its local
   identifiers to X86 abstractions.  For the best performance, one
   would want to use an X86 register for each LLVM %uid.  However,
   since there are an unlimited number of %uids and only 16 registers,
   doing so effectively is quite difficult.  We will see later in the
   course how _register allocation_ algorithms can do a good job at
   this.

   A simpler, but less performant, implementation is to map each %uid
   in the LLVM source to a _stack slot_ (i.e. a region of memory in
   the stack).  Since LLVMlite, unlike real LLVM, permits %uid locals
   to store only 64-bit data, each stack slot is an 8-byte value.

   [ NOTE: For compiling LLVMlite, even i1 data values should be
   represented as a 8-byte quad. This greatly simplifies code
   generation. ]

   We call the datastructure that maps each %uid to its stack slot a
   'stack layout'.  A stack layout maps a uid to an X86 operand for
   accessing its contents.  For this compilation strategy, the operand
   is always an offset from %rbp (in bytes) that represents a storage slot in
   the stack.
*)

type layout = (uid * X86.operand) list

(* A context contains the global type declarations (needed for getelementptr
   calculations) and a stack layout. *)
type ctxt = { tdecls : (tid * ty) list
            ; layout : layout
            }

(* useful for looking up items in tdecls or layouts *)
let lookup m x = List.assoc x m


(* compiling operands  ------------------------------------------------------ *)

(* LLVM IR instructions support several kinds of operands.

   LL local %uids live in stack slots, whereas global ids live at
   global addresses that must be computed from a label.  Constants are
   immediately available, and the operand Null is the 64-bit 0 value.

     NOTE: two important facts about global identifiers:

     (1) You should use (Platform.mangle gid) to obtain a string
     suitable for naming a global label on your platform (OS X expects
     "_main" while linux expects "main").

     (2) 64-bit assembly labels are not allowed as immediate operands.
     That is, the X86 code: movq _gid %rax which looks like it should
     put the address denoted by _gid into %rax is not allowed.
     Instead, you need to compute an %rip-relative address using the
     leaq instruction:   leaq _gid(%rip).

   One strategy for compiling instruction operands is to use a
   designated register (or registers) for holding the values being
   manipulated by the LLVM IR instruction. You might find it useful to
   implement the following helper function, whose job is to generate
   the X86 instruction that moves an LLVM operand into a designated
   destination (usually a register).
*)
let compile_operand (ctxt:ctxt) (dest:X86.operand) : Ll.operand -> ins =
  fun oprd -> 
    begin match oprd with
    | Null -> (Movq, [~$0; dest])
    | Const i -> (Movq, [Imm(Lit i); dest])
    | Gid lbl -> (Leaq, [Ind3(Lbl (Platform.mangle lbl), Rip); dest])
    | Id lbl -> (Movq, [lookup ctxt.layout lbl; dest]) 
    end



(* compiling call  ---------------------------------------------------------- *)

(* You will probably find it helpful to implement a helper function that
   generates code for the LLVM IR call instruction.

   The code you generate should follow the x64 System V AMD64 ABI
   calling conventions, which places the first six 64-bit (or smaller)
   values in registers and pushes the rest onto the stack.  Note that,
   since all LLVM IR operands are 64-bit values, the first six
   operands will always be placed in registers.  (See the notes about
   compiling fdecl below.)

   [ NOTE: It is the caller's responsibility to clean up arguments
   pushed onto the stack, so you must free the stack space after the
   call returns. ]

   [ NOTE: Don't forget to preserve caller-save registers (only if
   needed). ]
*)

let save_caller_saved () : X86.ins list = 
  [Pushq, [~%Rax];
  Pushq, [~%Rcx];
  Pushq, [~%Rdx];
  Pushq, [~%Rsi];
  Pushq, [~%Rdi];
  Pushq, [~%R08];
  Pushq, [~%R09];
  Pushq, [~%R10];
  Pushq, [~%R11];]

let restore_caller_saved () : X86.ins list =
  [Popq, [~%R11];
  Popq, [~%R10];
  Popq, [~%R09];
  Popq, [~%R08];
  Popq, [~%Rdi];
  Popq, [~%Rsi];
  Popq, [~%Rdx];
  Popq, [~%Rcx];
  Popq, [~%Rax];]

let move_params (ctxt:ctxt) (args: (ty * Ll.operand) list) : X86.ins list = 
  let move_param_x86 (i: int) (operand: Ll.operand): X86.ins =
    begin match i with
    | 0 -> (compile_operand ctxt ~%Rdi) operand
    | 1 -> (compile_operand ctxt ~%Rsi) operand
    | 2 -> (compile_operand ctxt ~%Rdx) operand
    | 3 -> (compile_operand ctxt ~%Rcx) operand
    | 4 -> (compile_operand ctxt ~%R08) operand
    | 5 -> (compile_operand ctxt ~%R09) operand
    | _ -> 
      begin match operand with
      | Id uid -> Pushq, [lookup ctxt.layout uid]
      | Const c -> Pushq, [Imm(Lit c)]
      | _ -> failwith "move_params: operand not implemented"
      end
    end 
  in
  List.rev (List.mapi move_param_x86 (snd (List.split args)))



(* compiling getelementptr (gep)  ------------------------------------------- *)

(* The getelementptr instruction computes an address by indexing into
   a datastructure, following a path of offsets.  It computes the
   address based on the size of the data, which is dictated by the
   data's type.

   To compile getelementptr, you must generate x86 code that performs
   the appropriate arithmetic calculations.
*)

(* [size_ty] maps an LLVMlite type to a size in bytes.
    (needed for getelementptr)

   - the size of a struct is the sum of the sizes of each component
   - the size of an array of t's with n elements is n * the size of t
   - all pointers, I1, and I64 are 8 bytes
   - the size of a named type is the size of its definition

   - Void, i8, and functions have undefined sizes according to LLVMlite.
     Your function should simply return 0 in those cases
*)
let rec size_ty (tdecls:(tid * ty) list) (t:Ll.ty) : int =
(* failwith "size_ty not implemented" *)
  begin match t with
  | Void 
  | I8 
  | Fun _ -> 0
  | I1 
  | I64 
  | Ptr _ -> 8
  | Namedt tid -> size_ty tdecls (lookup tdecls tid)
  | Struct ts -> List.fold_left (fun acc x -> acc + (size_ty tdecls x)) 0 ts
  | Array (n, t) -> n * (size_ty tdecls t)
  end

(* Generates code that computes a pointer value.

   1. op must be of pointer type: t*

   2. the value of op is the base address of the calculation

   3. the first index in the path is treated as the index into an array
     of elements of type t located at the base address

   4. subsequent indices are interpreted according to the type t:

     - if t is a struct, the index must be a constant n and it
       picks out the n'th element of the struct. [ NOTE: the offset
       within the struct of the n'th element is determined by the
       sizes of the types of the previous elements ]

     - if t is an array, the index can be any operand, and its
       value determines the offset within the array.

     - if t is any other type, the path is invalid

   5. if the index is valid, the remainder of the path is computed as
      in (4), but relative to the type f the sub-element picked out
      by the path so far
*)
let compile_gep (ctxt:ctxt) (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
(* failwith "compile_gep not implemented" *)
  begin match fst op with
  | Ptr t ->
    let read_base = compile_operand ctxt (~%Rax) (snd op) in
    let read_first_idx = compile_operand ctxt (~%Rdi) (List.hd path) in
    let nth_sibling = 
      [Imulq, [~$(size_ty ctxt.tdecls (fst op)); ~%Rdi];
       Addq, [~%Rdi; ~%Rax]] (*  ~%Rax stores the final address to return *)
    in
    let rec read_nth_child (current: ty * (ins list)) (idx: Ll.operand) : ty * ins list = 
      begin match fst current with
      | Struct ts -> 
        (* let read_idx: ins = compile_operand ctxt (~%Rdi) idx in *)
        begin match idx with
        | Const c -> 
          let current_ty = List.nth ts (Int64.to_int c) in
          let rec add_offset (i: int) (lst: ty list) (result: int) : int =
            if (i = 0) then result
            else add_offset (i-1) lst (result + size_ty ctxt.tdecls (List.nth lst (i-1)))
          in
          let offset = add_offset (Int64.to_int c) ts 0 in
          let add_displacement =
            [Addq, [~$offset; ~%Rax]]
          in
          current_ty, (snd current) @ add_displacement
        | _ -> failwith "Struct idx not a const!"
        end
      | Array (n, t') -> 
        let current_ty = t' in
        let read_idx: ins = compile_operand ctxt (~%Rdi) idx in
        let add_displacement = 
          [Imulq, [~$(size_ty ctxt.tdecls current_ty); ~%Rdi];
          Addq, [~%Rdi; ~%Rax]] (*  ~%Rax stores the final address to return *)
        in
        current_ty, (snd current) @ (read_idx :: add_displacement)
      | Namedt tid ->
        let current_ty = lookup ctxt.tdecls tid in
        read_nth_child (current_ty, snd current) idx
      | _ ->
        print_string (Llutil.string_of_ty t);
        print_string ("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        failwith "compile_gep: t not a struct or array"
      end
    in
    let nth_child = snd (List.fold_left read_nth_child (t, []) (List.tl path)) in
    read_base ::
    read_first_idx :: 
    nth_sibling @ 
    nth_child
  | _ -> failwith "compile_gep: op not a pointer"
  end



(* compiling instructions  -------------------------------------------------- *)

(* The result of compiling a single LLVM instruction might be many x86
   instructions.  We have not determined the structure of this code
   for you. Some of the instructions require only a couple of assembly
   instructions, while others require more.  We have suggested that
   you need at least compile_operand, compile_call, and compile_gep
   helpers; you may introduce more as you see fit.

   Here are a few notes:

   - Icmp:  the Setb instruction may be of use.  Depending on how you
     compile Cbr, you may want to ensure that the value produced by
     Icmp is exactly 0 or 1.

   - Load & Store: these need to dereference the pointers. Const and
     Null operands aren't valid pointers.  Don't forget to
     Platform.mangle the global identifier.

   - Alloca: needs to return a pointer into the stack

   - Bitcast: does nothing interesting at the assembly level
*)
let compile_insn (ctxt:ctxt) ((uid:uid), (i:Ll.insn)) : X86.ins list =
  (* "store" don't have a place in layout*)
  begin match i with
  | Binop (bop, _, op1, op2) -> 
    let lookup_layout_uid = lookup ctxt.layout uid in
    let binop_ll_to_x86 (bop: Ll.bop) : X86.opcode = 
      begin match bop with
      | Add -> Addq
      | Sub -> Subq
      | Mul -> Imulq
      | Shl -> Shlq
      | Lshr -> Shrq
      | Ashr -> Sarq
      | And -> Andq
      | Or -> Orq
      | Xor -> Xorq 
    end
    in
    (* ctxt.layout <- (uid, result_layout_entry) :: ctxt.layout; *)
    (* WARNING: ORDER HERE HAS BEEN SWITCHED! *)
    [compile_operand ctxt (~%Rcx) op2;
    compile_operand ctxt (~%Rsi) op1;
    (binop_ll_to_x86 bop), [~%Rcx; ~%Rsi];
    Movq, [~%Rsi; lookup_layout_uid]]
  
  | Icmp (cnd, _, op1, op2) -> 
    let lookup_layout_uid = lookup ctxt.layout uid in
    [compile_operand ctxt (~%Rdi) op2;
    compile_operand ctxt (~%Rsi) op1;
    Cmpq, [~%Rdi; ~%Rsi];
    Movq, [Imm(Lit 0L); lookup_layout_uid];
    Set (compile_cnd cnd), [lookup_layout_uid]]

  | Alloca _ ->
    (* Safety: clear memory slot? *)
    let lookup_layout_uid = lookup ctxt.layout uid in
    [Subq, [~$8; ~%Rsp];
    Movq, [~%Rsp; lookup_layout_uid]]

  | Load (t, op) -> 
    (* TODO: clear memory slot!!!!!!!!!!!! *)
    let lookup_layout_uid = lookup ctxt.layout uid in
    begin match op with
    | Id _  
    | Gid _ ->
      [compile_operand ctxt (~%Rdi) op;
      Movq, [Ind2(Rdi); ~%Rsi];
      Movq, [~%Rsi; lookup_layout_uid]]
    | _ -> failwith "load op cannot be a constant or null"
    end
  | Store (t, op1, op2) -> 
    [compile_operand ctxt (~%Rdi) op1;
    compile_operand ctxt (~%Rsi) op2;
    Movq, [~%Rdi; Ind2(Rsi)]]
    (* No type checking here ! Weird! *)
  | Call (t, Gid op, args) -> 
    let save_caller_saved = save_caller_saved () in
    let restore_caller_saved = restore_caller_saved () in
    let move_params = move_params ctxt args in
    (* let call = [Callq, [Ind3(Lbl (Platform.mangle op), Rip)]] in *)
    let call = [Callq, [Imm(Lbl (Platform.mangle op))]] in
    begin match t with
    | Void -> save_caller_saved @ move_params @ call @ restore_caller_saved
    | _ -> 
      let lookup_layout_uid = lookup ctxt.layout uid in
      let movq_result = [Movq, [~%Rax; lookup_layout_uid]] in
      save_caller_saved @ move_params @ call @ movq_result @ restore_caller_saved 
    (* No type checking here ! Weird! *)
    end
  | Bitcast (t1, op, t2) -> 
    let lookup_layout_uid = lookup ctxt.layout uid in
    [compile_operand ctxt (~%Rsi) op;
    Movq, [~%Rsi; lookup_layout_uid]]
  | Gep (t, op, path) -> 
    let lookup_layout_uid = lookup ctxt.layout uid in
    let compile_gep = compile_gep ctxt (t, op) path in
    compile_gep @ [Movq, [~%Rax; lookup_layout_uid]]
  | _ -> failwith "compile_insn not implemented"
  end



(* compiling terminators  --------------------------------------------------- *)

(* prefix the function name [fn] to a label to ensure that the X86 labels are 
   globally unique . *)
let mk_lbl (fn:string) (l:string) = fn ^ "." ^ l

(* Compile block terminators is not too difficult:

   - Ret should properly exit the function: freeing stack space,
     restoring the value of %rbp, and putting the return value (if
     any) in %rax.

   - Br should jump

   - Cbr branch should treat its operand as a boolean conditional

   [fn] - the name of the function containing this terminator
*)
let compile_terminator (fn:string) (ctxt:ctxt) (t:Ll.terminator) : ins list =
  let restore_stack = [Movq, [~%Rbp; ~%Rsp]; Popq, [~%Rbp]; Retq, [];] in
  begin match t with
  | Ret (Void, None) ->
    [Movq, [~$0; ~%Rax]] @ restore_stack
  | Ret (_, Some op) ->
    (compile_operand ctxt (~%Rax) op) :: restore_stack
  | Br lbl -> [Jmp, [Imm (Lbl (mk_lbl fn lbl))]]
  | Cbr (Id op, lbl1, lbl2) ->
    [Movq, [lookup ctxt.layout op; ~%Rax];
    Cmpq, [~$0; ~%Rax];
    J X86.Eq, [Imm (Lbl (mk_lbl fn lbl2))];
    Jmp, [Imm (Lbl (mk_lbl fn lbl1))]
    ]
  | Cbr (Const c, lbl1, lbl2) ->
    [Movq, [Imm (Lit c); ~%Rax];
    Cmpq, [~$0; ~%Rax];
    J X86.Eq, [Imm (Lbl (mk_lbl fn lbl2))];
    Jmp, [Imm (Lbl (mk_lbl fn lbl1))]
    ]
  | _ -> failwith "only implemented return void!" 
  end


(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. 
   [fn] - the name of the function containing this block
   [ctxt] - the current context
   [blk]  - LLVM IR code for the block
*)
let compile_block (fn:string) (ctxt:ctxt) (blk:Ll.block) : ins list =
  List.flatten (List.map (compile_insn ctxt) blk.insns) @ compile_terminator fn ctxt (snd blk.term)

let compile_lbl_block (fn:string) (lbl:string) (ctxt:ctxt) (blk:Ll.block) : elem =
  Asm.text (mk_lbl fn lbl) (compile_block fn ctxt blk)



(* compile_fdecl ------------------------------------------------------------ *)


(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)
let arg_loc (n : int) : operand =
(* failwith "arg_loc not implemented" *)
  match n with
  | 0 -> Reg Rdi
  | 1 -> Reg Rsi
  | 2 -> Reg Rdx
  | 3 -> Reg Rcx
  | 4 -> Reg R08
  | 5 -> Reg R09
  | i -> if i > 0 then Ind3 (Lit (Int64.of_int (8 * (i - 4))), Rbp) 
         else failwith "arg_loc: negative input!"

(* We suggest that you create a helper function that computes the
   stack layout for a given function declaration.

   - each function argument should be copied into a stack slot
   - in this (inefficient) compilation strategy, each local id
     is also stored as a stack slot.
   - see the discussion about locals

*)
let stack_layout (args : uid list) ((block, lbled_blocks):cfg) : layout =
(* TODO: Only implemented args now, blocks are left. *)
  let put_arg = fun (idx:int) (label:lbl) : (uid * operand) -> (label, Ind3(Lit (Int64.of_int ((-8)*(idx + 1)) ), Rbp)) in
  let args_layout = List.mapi put_arg args in
  let put_uid (l: (uid * operand) list) (i: uid * insn) : (uid * operand) list = 
    begin match (snd i) with
    | Call (Void, _, _)
    | Store _ -> l

    | _ -> (fst i, Ind3(Lit (Int64.of_int ((-8)*(List.length l + 1)) ), Rbp)) :: l
    end
  in 
  let entry_layout = List.fold_left put_uid args_layout block.insns in
  let exit_layout = List.fold_left put_uid entry_layout (List.flatten 
  (List.map (fun (x:block) : (uid * insn) list -> x.insns)  
  (List.map snd lbled_blocks))) in
  exit_layout



(* The code for the entry-point of a function must do several things:

   - since our simple compiler maps local %uids to stack slots,
     compiling the control-flow-graph body of an fdecl requires us to
     compute the layout (see the discussion of locals and layout)

   - the function code should also comply with the calling
     conventions, typically by moving arguments out of the parameter
     registers (or stack slots) into local storage space.  For our
     simple compilation strategy, that local storage space should be
     in the stack. (So the function parameters can also be accounted
     for in the layout.)

   - the function entry code should allocate the stack storage needed
     to hold all of the local stack slots.
*)

(* let find_func_term = failwith "find_func_term not implemented" *)

let compile_fdecl (tdecls:(tid * ty) list) (name:string) ({ f_ty; f_param; f_cfg }:fdecl) : prog =
  let layout = stack_layout f_param f_cfg in
  let arg_locs = List.mapi (fun idx _ -> arg_loc idx) f_param in
  let arg_layout = List.map (lookup layout) f_param in
  let movq_pair_oprd (s: X86.operand) (d: X86.operand) : (X86.ins) list = 
    (* Stupid Method : *)
    [X86.Movq, [s; ~%Rax];
    X86.Movq, [~%Rax; d]] 
    in 
  let movq_args = List.flatten (List.map2 movq_pair_oprd arg_locs arg_layout) in
  let rsp_offset = 8 * List.length (layout) in
  let prefix = [Pushq, [~%Rbp]; Movq, [~%Rsp; ~%Rbp]; Subq, [~$rsp_offset; ~%Rsp]] in
  let ctxt = {tdecls = tdecls; layout = layout} in
  let entry_ins = compile_block (Platform.mangle name) ctxt (fst f_cfg) in 
  let labelled_elems = List.map (fun (lbl, blk) -> compile_lbl_block name lbl ctxt blk) (snd f_cfg)  in
  Asm.gtext (Platform.mangle name) (prefix @ movq_args @ entry_ins) :: labelled_elems

(* compile_gdecl ------------------------------------------------------------ *)
(* Compile a global value into an X86 global data declaration and map
   a global uid to its associated X86 label.
*)
let rec compile_ginit : ginit -> X86.data list = function
  | GNull     -> [Quad (Lit 0L)]
  | GGid gid  -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c    -> [Quad (Lit c)]
  | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.map compile_gdecl gs |> List.flatten
  | GBitcast (t1,g,t2) -> compile_ginit g

and compile_gdecl (_, g) = compile_ginit g


(* compile_prog ------------------------------------------------------------- *)
let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g = fun (lbl, gdecl) -> Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f = fun (name, fdecl) -> compile_fdecl tdecls name fdecl in
  (List.map g gdecls) @ (List.map f fdecls |> List.flatten)
