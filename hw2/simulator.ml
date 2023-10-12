(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next seven bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref true

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = fun x -> 
  (* failwith "interp_cnd unimplemented" *)
  match x with
  | Eq -> fz
  | Neq -> not fz 
  | Lt -> ((fs && (not fo)) || ((not fs) && fo))
  | Le -> ((fs && (not fo)) || ((not fs) && fo)) || fz
  | Gt -> not (((fs && (not fo)) || ((not fs) && fo)) || fz)
  | Ge -> not ((fs && (not fo)) || ((not fs) && fo))

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  if addr >= mem_bot && addr <= mem_top then
    Some (Int64.to_int(Int64.sub addr mem_bot))
  else
    None 

(* Accesses X86Lite memory array using the mapped index *)
let get_from_mem (addr:int option) (mm:mem) : sbyte list = 
  match addr with 
  | None -> raise X86lite_segfault
  | Some i -> print_string "get_from_mem: ";print_int i;print_newline(); mm.(i) :: mm.(i+1) :: mm.(i+2) :: mm.(i+3) :: mm.(i+4) :: mm.(i+5) :: mm.(i+6) :: mm.(i+7) :: []

let set_in_mem (addr:int option) (mm:mem) (bs:sbyte list) : unit = 
  begin match addr with 
  | None -> raise X86lite_segfault
  | Some i -> 
    print_string "set_in_mem: ";
    print_int i;
    print_newline();
    print_int List.(length bs);
    print_newline();
    mm.(i) <- List.nth bs 0;
    print_string("0");
    mm.(i+1) <- List.nth bs 1;
    print_string("1");
    mm.(i+2) <- List.nth bs 2; 
    print_string("2");
    mm.(i+3) <- List.nth bs 3; 
    print_string("3");
    mm.(i+4) <- List.nth bs 4; 
    print_string("4");
    mm.(i+5) <- List.nth bs 5; 
    print_string("5");
    mm.(i+6) <- List.nth bs 6; 
    print_string("6");
    mm.(i+7) <- List.nth bs 7;
    print_string("7"); 
    print_newline();
    print_string "----------";
    print_newline();
    (* TODO: refactor to blit *)
  end

(* Interpret an operand with respect to the given machine state. *)

let interp_unary_operand (operands : operand list) (m:mach) : int = 
  begin match operands with
  | [Imm _] -> failwith "interp_unary_operand: tried to interpret an immediate value!"
  | [Reg r] -> (rind r)
  | [Ind1 (Lit i)] -> let addr = map_addr i in begin match addr with 
                      | None -> raise X86lite_segfault
                      | Some i -> i
                      end
  | [Ind1 (Lbl _)] -> failwith "interp_unary_operand: tried to interpret a label!"
  | [Ind2 r] -> begin match map_addr(m.regs.(rind r)) with 
                | None -> raise X86lite_segfault
                | Some i -> i
                end
  | [Ind3 (Lit i, r)] -> let addr = Int64.add m.regs.(rind r) i in
                          begin match map_addr addr with 
                          | None -> raise X86lite_segfault
                          | Some i -> i; 
                          end
  | _ -> failwith "interp_unary_operand: tried to interpret an invalid operand!"
  end

let interp_binary_operand (operands : operand list) (m:mach) : (int64 * int) = 
  begin match operands with 
  (* | [(Ind1 i| Ind2 i| Ind3 (i, r)); (Ind1 j| Ind2 j| Ind3 (j, r'))] -> failwith "interp_binary_operand: tried to interpret an invalid operand!" *)
  | [Ind1 _; Ind1 _]
  | [Ind2 _; Ind1 _]
  | [Ind3 (_, _); Ind1 _]
  | [Ind1 _; Ind2 _]
  | [Ind2 _; Ind2 _]
  | [Ind3 (_, _); Ind2 _]
  | [Ind1 _; Ind3 (_, _)]
  | [Ind2 _; Ind3 (_, _)]
  | [Ind3 (_, _); Ind3 (_, _)] -> failwith "interp_binary_operand: tried to interpret an invalid operand!"
  | [src; dst] ->
      let s = begin match src with 
      | Imm (Lit i) -> i
      | Imm (Lbl l) -> failwith "interp_binary_operand: tried to interpret a label!"
      | Reg r -> m.regs.(rind r)
      | Ind1 (Lit i) -> int64_of_sbytes(get_from_mem (map_addr i) (m.mem))
      | Ind1 (Lbl l) -> failwith "interp_binary_operand: tried to interpret a label!"
      | Ind2 r -> int64_of_sbytes(get_from_mem (map_addr(m.regs.(rind r))) (m.mem))
      | Ind3 (Lit i, r) -> int64_of_sbytes(get_from_mem (map_addr(Int64.add m.regs.(rind r) i)) (m.mem))
      | Ind3 (Lbl l, r) -> failwith "interp_binary_operand: tried to interpret a label!"
      end in 
      let d = begin match dst with
      | Imm i -> failwith "interp_binary_operand: tried to interpret an immediate value!"
      | Reg r -> rind r
      | Ind1 (Lit i) -> begin match map_addr i with
                        | None -> raise X86lite_segfault
                        | Some i -> i
                        end
      | Ind1 (Lbl l) -> failwith "interp_binary_operand: tried to interpret a label!"
      | Ind2 r -> begin match map_addr(m.regs.(rind r)) with
                  | None -> raise X86lite_segfault
                  | Some i -> i
                  end
      | Ind3 (Lit i, r) -> begin match map_addr(Int64.add m.regs.(rind r) i) with 
                          | None -> raise X86lite_segfault
                          | Some i -> i
                          end
      | Ind3 (Lbl l, r) -> failwith "interp_binary_operand: tried to interpret a label!"
      end in (s, d)
  | _ -> failwith "interp_binary_operand: tried to interpret an invalid operand!"
    end

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)

let execute (op: opcode) (args: operand list) (m:mach) : unit = 
  (* failwith "execute unimplemented" *)
  begin match op with
  | Negq -> 
    let idx: int = interp_unary_operand args m in
    begin match args with
      | [Reg r] -> (m.regs.(idx) <- Int64.neg m.regs.(idx))
      | [Ind1 _]
      | [Ind2 _]
      | [Ind3 _] -> set_in_mem (Some idx) m.mem (sbytes_of_int64 (Int64.neg (int64_of_sbytes(get_from_mem (Some idx) m.mem))))
      | _ -> failwith "execute: tried to interpret an invalid operand!"
    end; print_int idx;
    Int64.compare (Int64.min_int) m.regs.(idx) |> (fun x -> (m.flags.fo <- x = 0));
  | Movq ->
    let (s, d) = interp_binary_operand args m in
    begin match args with
      | [_; Ind1 _] 
      | [_; Ind2 _]
      | [_; Ind3 _] -> set_in_mem (Some d) m.mem (sbytes_of_int64 s)
      | [_; Reg _] -> m.regs.(d) <- s
      | _ -> failwith "execute: tried to interpret an invalid operand!"
    end;
    Int64.compare s 0L |> (fun x -> (m.flags.fo <- x = 0));
    Int64.compare s Int64.zero |> (fun x -> (m.flags.fz <- x = 0));
    Int64.compare s Int64.min_int |> (fun x -> (m.flags.fs <- x = 0));
  | _ -> failwith "more instructions to be implemented"
  end

let step (m:mach) : unit = 
  let rip = m.regs.(rind Rip) in
  let addr = map_addr rip in
  let byte = get_from_mem addr m.mem in
  let _ = begin match byte with
    | [InsB0 (op, args); _; _; _; _; _; _; _] -> 
      if !debug_simulator then print_endline @@ string_of_ins (op, args);
      execute op args m;
    | _ -> failwith "step: tried to interpret an invalid instruction!"
  end in
  m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L

(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)
            due to the null terminator

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)
let assemble (p:prog) : exec =
failwith "assemble unimplemented"

(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
failwith "load unimplemented"
