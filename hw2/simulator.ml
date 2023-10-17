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

let clear_lower_byte = 0xFFFFFFFFFFFFFF00L
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


(* -------------------------------- Helper: Memory Access -------------------------------- *)

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  if addr >= mem_bot && addr <= mem_top then
    Some (Int64.to_int(Int64.sub addr mem_bot))
  else
    None 

(* Accesses X86Lite memory array using the mapped index *)
(* Used for accessing both instructions and data *)
let get_sbyte_from_mem (addr:int option) (mm:mem) : sbyte list = 
  match addr with 
  | None -> raise X86lite_segfault
  | Some i -> mm.(i) :: mm.(i+1) :: mm.(i+2) :: mm.(i+3) :: mm.(i+4) :: mm.(i+5) :: mm.(i+6) :: mm.(i+7) :: []

let get_int64_from_mem (addr:int option) (mm:mem) : int64 = 
  int64_of_sbytes(get_sbyte_from_mem addr mm)

(* Sets the value of the memory array at the mapped index *)
let set_in_mem (addr:int option) (mm:mem) (bs:sbyte list) : unit = 
  begin match addr with 
  | None -> raise X86lite_segfault
  | Some i -> 
    mm.(i) <- List.nth bs 0;
    mm.(i+1) <- List.nth bs 1;
    mm.(i+2) <- List.nth bs 2; 
    mm.(i+3) <- List.nth bs 3;
    mm.(i+4) <- List.nth bs 4;
    mm.(i+5) <- List.nth bs 5;
    mm.(i+6) <- List.nth bs 6;
    mm.(i+7) <- List.nth bs 7;
    (* TODO: refactor to blit *)
  end

let set_int64_in_mem (addr:int option) (mm:mem) (value: int64) : unit =
  set_in_mem addr mm (sbytes_of_int64 value)

let set_in_byte (addr:int option) (mm:mem) (value: int64) : unit =
  let list_of_value = sbytes_of_int64 value in
  begin match addr with
  | None -> raise X86lite_segfault
  | Some i ->
    mm.(i) <- List.nth list_of_value 0
  end

(* -------------------------------- Helper: Sign Computation -------------------------------- *)
let sign_bit (a: int64) : bool =
  if ((Int64.compare a 0L) < 0) then true 
  else false

let same_sign (a: int64) (b: int64) : bool =
  if (sign_bit a) = (sign_bit b) then true
  else false

let top_two_diff (a: int64): bool = 
  if ((Int64.compare a 0L) < 0) && (Int64.compare (Int64.shift_left a 1) 0L >= 0) then true
  else if ((Int64.compare a 0L) >= 0) && (Int64.compare (Int64.shift_left a 1) 0L < 0) then true
  else false

(* -------------------------------- Helper: Set SF and ZF -------------------------------- *)
let set_SF_and_ZF (r64: int64) (m:mach): unit =
  m.flags.fz <- (Int64.equal r64 0L);
  m.flags.fs <- sign_bit (r64)
  
(* -------------------------------- Helper: Interpret Operands -------------------------------- *)

(* Interpret an operand with respect to the given machine state. *)
let interp_unary_opn_index (operands : operand list) (m:mach) : int = 
  begin match operands with
  | [Imm _] -> failwith "interp_unary_opn_index: tried to interpret an immediate value!"
  | [Reg r] -> (rind r)
  | [Ind1 (Lit i)] -> let addr = map_addr i in begin match addr with 
                      | None -> raise X86lite_segfault
                      | Some i -> i
                      end
  | [Ind1 (Lbl _)] -> failwith "interp_unary_opn_index: tried to interpret a label!"
  | [Ind2 r] -> begin match map_addr(m.regs.(rind r)) with 
                | None -> raise X86lite_segfault
                | Some i -> i
                end
  | [Ind3 (Lit i, r)] -> let addr = Int64.add m.regs.(rind r) i in
                          begin match map_addr addr with 
                          | None -> raise X86lite_segfault
                          | Some i -> i; 
                          end
  | _ -> failwith "interp_unary_opn_index: tried to interpret an invalid operand!"
  end

let interp_unary_opn_int64 (operands: operand list) (m: mach) : int64 =
  begin match operands with
  | [Imm (Lit i)] -> i
  | [Reg _] -> m.regs.(interp_unary_opn_index operands m)
  | [Ind1 (Lit _)]
  | [Ind2 _]
  | [Ind3 (Lit _, _)] -> get_int64_from_mem (Some (interp_unary_opn_index operands m) ) m.mem
  | _ -> failwith "interp_unary_opn_int64: tried to interpret invalid operand!"
  end

let interp_binary_operand (operands : operand list) (m:mach) : (int64 * int) = 
  begin match operands with 
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
      | Ind1 (Lit i) -> get_int64_from_mem (map_addr i) (m.mem)
      | Ind1 (Lbl l) -> failwith "interp_binary_operand: tried to interpret a label!"
      | Ind2 r -> get_int64_from_mem (map_addr(m.regs.(rind r))) (m.mem)
      | Ind3 (Lit i, r) -> get_int64_from_mem (map_addr(Int64.add m.regs.(rind r) i)) (m.mem)
      | Ind3 (Lbl l, r) -> failwith "interp_binary_operand: tried to interpret a label!"
      end in 
      let d = begin match dst with
      | Imm i -> failwith "interp_binary_operand: tried to interpret an immediate value!!"
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
(* -------------------------------- Helper: Arithmatic Operation -------------------------------- *)
let add_and_set_flags (args: operand list) (m: mach): int64 =
  let (s, d) = interp_binary_operand args m in 
  let (s64, d64, r64) = begin match args with
  | [_ ; Ind1 _]
  | [_ ; Ind2 _]
  | [_ ; Ind3 _] -> 
    let r1 = Int64.add (get_int64_from_mem (Some d) m.mem) s in
    let temp = (get_int64_from_mem (Some d) m.mem) in
    set_int64_in_mem (Some d) m.mem r1;
    (s, temp, r1)
  | [_; Reg _] ->
    let r2 = Int64.add m.regs.(d) s in 
    let temp = m.regs.(d) in 
    m.regs.(d) <- r2; 
    (s, temp, r2)
  | _ -> failwith ""
  end in
  m.flags.fo <- ( (same_sign d64 s64) && not (same_sign r64 s64) );
  set_SF_and_ZF r64 m;
  s64


(* -------------------------------- Helper: Logic Operation -------------------------------- *)
let logic_operation (args: operand list) (m: mach) (operation: quad -> quad -> quad): unit =
  let (s, d) = interp_binary_operand args m in
  let r64 = begin match args with
  | [_; Ind1 _] 
  | [_; Ind2 _]
  | [_; Ind3 _] -> 
    let r = (operation s (get_int64_from_mem (Some d) m.mem)) in
    set_int64_in_mem (Some d) m.mem r;
    r
  | [_; Reg _] -> 
    let r = (operation s m.regs.(d)) in
    m.regs.(d) <- r;
    r
  | _ -> failwith "execute: tried to interpret an invalid operand!"
  end in
  set_SF_and_ZF r64 m;
  m.flags.fo <- false

(* -------------------------------- Helper: Shift Operation -------------------------------- *)
let shift_operation (args: operand list) (m:mach) (operation: quad -> int -> quad): int64 * int64 * int64 =
  let (amt, d) = interp_binary_operand args m in
  let (d64, r64) =
  assert (amt >= 0L && amt < 64L); (* TODO: Should handle exception*)
  begin match args with
  | [Imm _; Ind1 _]  
  | [Imm _; Ind2 _] 
  | [Imm _; Ind3 _] 
  | [Reg Rcx; Ind1 _] 
  | [Reg Rcx; Ind2 _] 
  | [Reg Rcx; Ind3 _] ->
    let r1 = operation (get_int64_from_mem (Some d) m.mem) (Int64.to_int amt) in
    let temp = (get_int64_from_mem (Some d) m.mem) in
    set_int64_in_mem (Some d) m.mem r1;
    (temp, r1)
  | [Imm _; Reg _] 
  | [Reg Rcx; Reg _]-> 
    let r1 = operation (m.regs.(d)) (Int64.to_int amt) in
    let temp = (get_int64_from_mem (Some d) m.mem) in
    m.regs.(d) <- r1;
    (temp, r1)
  | _ -> failwith ""
  end in
  (amt, d64, r64)

(* -------------------------------- Helper: Data Storage -------------------------------- *)
let popq_into_dst (args: operand list) (m:mach): unit =
  let d = interp_unary_opn_index args m in
  let data = get_int64_from_mem (map_addr m.regs.(rind Rsp)) m.mem in
  begin match args with
  | [Reg _] -> m.regs.(d) <- data
  | [Ind1 _] 
  | [Ind2 _]
  | [Ind3 _] -> set_int64_in_mem (Some d) m.mem data
  | _ -> failwith "execute popq: tried to interpret an invalid operand!"
  end;
  m.regs.(rind Rsp) <- Int64.add m.regs.(rind Rsp) 8L

let push_into_stack (args: operand list) (m:mach): unit =
  let s = interp_unary_opn_int64 args m in
  m.regs.(rind Rsp) <- Int64.sub m.regs.(rind Rsp) 8L;
  set_int64_in_mem (map_addr m.regs.(rind Rsp)) m.mem s
  
(* -------------------------------- Helper: Print -------------------------------- *)

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)

let execute (op: opcode) (args: operand list) (m:mach) : unit = 
  (* failwith "execute unimplemented" *)

  (* ------------------------------------------------------------------------------------------------ *)
  (* ----------------------------------- Arithmetic Instructions ------------------------------------ *)
  (* ------------------------------------------------------------------------------------------------ *)

  begin match op with
  | Negq -> 
    let dst: int = interp_unary_opn_index args m in
    let r64 = begin match args with
      | [Reg _] -> let r1 = Int64.neg m.regs.(dst) in (m.regs.(dst) <- r1); r1
      | [Ind1 _]
      | [Ind2 _]
      | [Ind3 _] -> let r2 = Int64.neg (get_int64_from_mem (Some dst) m.mem) in (set_int64_in_mem (Some dst) m.mem r2); r2
      | _ -> failwith "execute: tried to interpret an invalid operand!"
    end in
    m.flags.fo <- (Int64.equal (Int64.min_int) r64);
    set_SF_and_ZF r64 m
  | Addq ->
    let (s, d) = interp_binary_operand args m in 
    let (s64, d64, r64) = begin match args with
    | [_ ; Ind1 _]
    | [_ ; Ind2 _]
    | [_ ; Ind3 _] -> 
      let r1 = Int64.add (get_int64_from_mem (Some d) m.mem) s in
      let temp = (get_int64_from_mem (Some d) m.mem) in
      set_int64_in_mem (Some d) m.mem r1;
      (s, temp, r1)
    | [_; Reg _] ->
      let r2 = Int64.add m.regs.(d) s in 
      let temp = m.regs.(d) in 
      m.regs.(d) <- r2; 
      (s, temp, r2)
    | _ -> failwith ""
    end in
    m.flags.fo <- (same_sign d64 s64) && not (same_sign r64 s64);
    set_SF_and_ZF r64 m
  | Subq ->
    let (s, d) = interp_binary_operand args m in
    let (s64, d64, r64) = begin match args with
      | [_; Ind1 _] 
      | [_; Ind2 _]
      | [_; Ind3 _] -> 
        let r1 = Int64.sub (get_int64_from_mem (Some d) m.mem) s in
        let temp = (get_int64_from_mem (Some d) m.mem) in
        set_int64_in_mem (Some d) m.mem r1;
        (s, temp, r1)
      | [_; Reg _] -> 
        let r2 = Int64.sub m.regs.(d) s in 
        let temp = m.regs.(d) in 
        m.regs.(d) <- r2; 
        (s, temp, r2)
      | _ -> failwith "execute: tried to interpret an invalid operand!"
    end in
    m.flags.fo <- ( (same_sign d64 (Int64.neg s64)) && not (same_sign r64 (Int64.neg s64)) ) || (Int64.equal s64 Int64.min_int);
    set_SF_and_ZF r64 m
  | Imulq -> 
    let (s, d) = interp_binary_operand args m in
    let (s64, d64, r64) = begin match args with
      | [_; Reg _] -> 
        let r1 = Int64.mul (m.regs.(d)) s in
        let temp = m.regs.(d) in
        m.regs.(d) <- r1;
        (s, temp, r1)
      | _ -> failwith "execute: tried to interpret an invalid operand!"
    end in
    m.flags.fo <- (not (Int64.equal s64 0L)) && ((Int64.div r64 s64) <> d64);
    (* flag fz and fs are undefined *)
  | Incq ->
    let src = interp_unary_opn_index args m in
    let s64 = interp_unary_opn_int64 args m in
    let r64 = Int64.succ s64 in
    begin match args with
    | [Reg _] -> m.regs.(src) <- r64
    | [Ind1 _]
    | [Ind2 _]
    | [Ind3 _] -> set_int64_in_mem (Some src) m.mem r64
    | _ -> failwith "execute_incq: tried to interpret an invalid operand!"
    end;
    set_SF_and_ZF r64 m;
    m.flags.fo <- (same_sign 1L s64) && (same_sign (-1L) r64)
  | Decq ->
    let src = interp_unary_opn_index args m in
    let s64 = interp_unary_opn_int64 args m in
    let r64 = Int64.pred s64 in
    begin match args with
    | [Reg _] -> m.regs.(src) <- r64
    | [Ind1 _]
    | [Ind2 _]
    | [Ind3 _] -> set_int64_in_mem (Some src) m.mem r64
    | _ -> failwith "execute_decq: tried to interpret an invalid operand"
    end;
    set_SF_and_ZF r64 m;
    m.flags.fo <- ((same_sign (-1L) s64) && (same_sign 1L r64)) || (Int64.equal s64 Int64.min_int)

  (* ------------------------------------------------------------------------------------------------ *)
  (* ----------------------------------- Logic Instructions ----------------------------------------- *)
  (* ------------------------------------------------------------------------------------------------ *)
  | Notq -> 
    let dst = interp_unary_opn_index args m in
    let v = interp_unary_opn_int64 args m in 
    begin match args with
    | [Reg _] -> m.regs.(dst) <- Int64.lognot v
    | [Ind1 _]
    | [Ind2 _]
    | [Ind3 _] -> set_int64_in_mem (Some dst) m.mem (Int64.lognot v)
    | _ -> failwith "execute_notq: tried to implement an invalid operand"
    end
  | Andq -> logic_operation args m Int64.logand
  | Orq -> logic_operation args m Int64.logor
  | Xorq -> logic_operation args m Int64.logxor

  (* ------------------------------------------------------------------------------------------------ *)
  (* ----------------------------------- Bit-manipulation Instructions ------------------------------ *)
  (* ------------------------------------------------------------------------------------------------ *)
  | Sarq -> 
    let (amt, d64, r64) = shift_operation args m Int64.shift_right in
    if not (Int64.equal amt 0L) then begin
      set_SF_and_ZF r64 m;
      if (Int64.equal amt 1L) then
        m.flags.fo <- false
    end
  | Shlq ->
    let (amt, d64, r64) = shift_operation args m Int64.shift_left in
    if not (Int64.equal amt 0L) then begin
      set_SF_and_ZF r64 m;
      if (Int64.equal amt 1L) then begin
        if top_two_diff d64 then 
          m.flags.fo <- true
        else
          m.flags.fo <- false
      end 
    end
  | Shrq ->
    let (amt, d64, r64) = shift_operation args m Int64.shift_right_logical in
    if not (Int64.equal amt 0L) then begin
      m.flags.fs <- sign_bit r64;
      if (Int64.equal r64 0L) then
        m.flags.fz <- true
      else begin
        m.flags.fz <- false
      end;
      if (Int64.equal amt 1L) then begin
        m.flags.fo <- sign_bit d64
      end
    end
  (* TODO: More test of Set.*)
  | Set c -> 
    let dst = interp_unary_opn_index args m in
    let data = Int64.of_int (Bool.to_int (interp_cnd m.flags c)) in
    begin match args with
    | [Reg _] -> (m.regs.(dst) <- Int64.add data (Int64.logand clear_lower_byte m.regs.(dst)))
    | [Ind1 _]
    | [Ind2 _]
    | [Ind3 _] -> set_in_byte (Some dst) m.mem data
    | _ -> failwith ""
    end
  (* ------------------------------------------------------------------------------------------------ *)
  (* ----------------------------------- Data-movement Instructions --------------------------------- *)
  (* ------------------------------------------------------------------------------------------------ *)
  | Leaq ->
    begin match args with
    | [src; dst] -> 
      let s = begin match src with
      | Ind1 (Lit i) -> i
      | Ind1 (Lbl l) -> failwith "execute: tried to interpret a label!"
      | Ind2 r -> m.regs.(rind r)
      | Ind3 (Lit i, r) -> Int64.add m.regs.(rind r) i
      | _ -> failwith "execute: tried to interpret an invalid operand!"
      end in 
      let d = interp_unary_opn_index [dst] m in
      begin match dst with
      | Reg _ -> m.regs.(d) <- s
      | Ind1 _
      | Ind2 _
      | Ind3 _ -> set_int64_in_mem (Some d) m.mem s
      | _ -> failwith "execute: tried to interpret an invalid operand!"
      end
    | _ -> failwith "execute: tried to interpret an invalid operand!"
    end


  | Movq ->
    let (s, d) = interp_binary_operand args m in
    begin match args with
      | [_; Ind1 _] 
      | [_; Ind2 _]
      | [_; Ind3 _] -> set_int64_in_mem (Some d) m.mem s
      | [_; Reg _] -> m.regs.(d) <- s
      | _ -> failwith "execute: tried to interpret an invalid operand!"
    end;
  | Pushq -> 
    push_into_stack args m
  | Popq ->
    popq_into_dst args m 
  (* ------------------------------------------------------------------------------------------------ *)
  (* ----------------------------------- Control-flow and condition --------------------------------- *)
  (* ------------------------------------------------------------------------------------------------ *)
  | Cmpq ->
    let (s, d) = interp_binary_operand args m in
    let (s64, d64, r64) = begin match args with
      | [_; Ind1 _] 
      | [_; Ind2 _]
      | [_; Ind3 _] -> let r1 = Int64.sub (get_int64_from_mem (Some d) m.mem) s in
                      let temp = (get_int64_from_mem (Some d) m.mem) in
                      (s, temp, r1)
      | [_; Reg _] -> let r2 = Int64.sub m.regs.(d) s in 
                      let temp = m.regs.(d) in 
                      (s, temp, r2)
      | _ -> failwith "execute: tried to interpret an invalid operand!"
    end in
    m.flags.fo <- ( (same_sign d64 (Int64.neg s64)) && not (same_sign r64 (Int64.neg s64)) ) || (Int64.equal s64 Int64.min_int);
    set_SF_and_ZF r64 m

  | Jmp -> 
    let s = interp_unary_opn_int64 args m in
    m.regs.(rind Rip) <- s
  | Callq ->
    push_into_stack [Reg Rip] m;
    m.regs.(rind Rip) <- interp_unary_opn_int64 args m

  | Retq ->
    popq_into_dst [Reg Rip] m;
    (* Wrong: m.regs.(rind Rip) <- Int64.sub m.regs.(rind Rip) 8L !!*)
  | J c ->
    let s = interp_unary_opn_int64 args m in
    if (interp_cnd m.flags c) then
      m.regs.(rind Rip) <- s
  end

let step (m:mach) : unit = 
  let rip = m.regs.(rind Rip) in
  let addr = map_addr rip in
  let byte = get_sbyte_from_mem addr m.mem in
  begin match byte with
    | [InsB0 (op, args); _; _; _; _; _; _; _] -> 
      if !debug_simulator then print_endline @@ string_of_ins (op, args);
      m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L;
      execute op args m;
    | _ -> failwith "step: tried to interpret an invalid instruction!"
  end

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

let separate_text_from_data (p:prog) : prog * prog =
  let is_text_or_data (init: prog * prog) (e:elem) : prog * prog  =
    begin match e.asm with
    | Text _ -> (fst init @ [e], snd init)
    | Data _ -> (fst init, snd init @ [e])
    end in
  List.fold_left is_text_or_data ([], []) p

let get_text_size_bytes (p:prog) : int64 =
  let get_size (init: int64) (e:elem) : int64 =
    begin match e.asm with
    | Text i -> Int64.add (Int64.of_int (List.length i)) init
    | _ -> init
    end in
  Int64.mul (List.fold_left get_size 0L p) 8L

let empty (_: string) : int64 = -1L

let lookup (d: string -> int64) (k: string) : int64 =
  d k

let add_to_table (d: string -> int64) (k: string) (v: int64) : (string -> int64) =
  if Int64.equal (lookup d k) (-1L) then
     fun x -> if x = k then v else d x
  else raise (Redefined_sym k)

let get_table (p:prog) : (string -> int64) = 
  let get_label (prev: (string -> int64) * int64) (e:elem) : (string -> int64) * int64 =
    begin match e.asm with
    | Text i -> (add_to_table (fst prev) e.lbl (snd prev), Int64.add (Int64.of_int ((List.length i) * 8)) (snd prev))
    | Data i -> (add_to_table (fst prev) e.lbl (snd prev), Int64.add (Int64.of_int ((List.length i) * 8)) (snd prev))
    end in 
    fst (List.fold_left get_label (empty, mem_bot) p)

let lookup_with_undefined (tbl: string -> int64) (l: string) : int64 =
  let a_resolved = (lookup tbl l) in 
    if Int64.equal a_resolved (-1L) then raise (Undefined_sym l)
    else a_resolved

let resolve_symbol_single_ins (op, args:ins) (tbl: string -> int64) : ins =
  let resolve_arg (a: operand) : operand =
    begin match a with
    | Imm (Lbl l) -> Imm (Lit (lookup_with_undefined tbl l))
    | Ind1 (Lbl l) -> Ind1 (Lit (lookup_with_undefined tbl l))
    | Ind3 (Lbl l, r) -> Ind3 (Lit (lookup_with_undefined tbl l), r)
    | _ -> a
    end in
  (op, List.map resolve_arg args)

let resolve_symbol_single_data (d: data) (tbl: string -> int64) : data =
  begin match d with
  | Quad (Lbl l) -> Quad (Lit (lookup_with_undefined tbl l))
  | _ -> d
  end

let get_text_segment (text:prog) (tbl: string -> int64) : (sbyte list) = 
  let get_text_from_elem (seg: sbyte list) (e: elem) : sbyte list =
    begin match e.asm with
    | Text i -> seg @ List.fold_left List.append [] (List.map (fun x -> sbytes_of_ins(resolve_symbol_single_ins x tbl)) i)
    | Data _ -> failwith "get_text_segment: tried to get text segment from data segment!"
    end in 
  List.fold_left get_text_from_elem [] text

let get_data_segment (data:prog) (tbl: string -> int64): (sbyte list) =
  let get_data_from_elem (seg: sbyte list) (e: elem) : sbyte list =
    begin match e.asm with
    | Text _ -> failwith "get_data_segment: tried to get data segment from text segment!"
    | Data i -> seg @ List.fold_left List.append [] (List.map (fun x -> sbytes_of_data(resolve_symbol_single_data x tbl)) i)
    end in 
  List.fold_left get_data_from_elem [] data


let assemble (p:prog) : exec =
  (* failwith "assemble unimplemented" *)
  let (text, data) = separate_text_from_data p in
  let text_size = get_text_size_bytes text in
  let text_pos = mem_bot in
  let data_pos = Int64.add text_pos text_size in
  let symbol_table = get_table p in
  let entry = lookup_with_undefined symbol_table "main" in
  let text_seg = get_text_segment text symbol_table in
  let data_seg = get_data_segment data symbol_table in
  (* analyze entry, text_seg and data_seg *)
  {entry = entry;    (* TODO *)
   text_pos = text_pos;
   data_pos = data_pos;
   text_seg = text_seg;  (* TODO *)
   data_seg = data_seg   (* TODO *)
   }

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
(* failwith "load unimplemented" *)
  let flags: flags = {fo = false; fs = false; fz = false} in
  let regs: regs = Array.make nregs 0L in
  let mem: mem = Array.make mem_size (Byte '\x00') in
  let text_len = List.length text_seg in
  let data_len = List.length data_seg in
  Array.blit (Array.of_list text_seg) 0 mem 0 text_len; 
  Array.blit (Array.of_list data_seg) 0 mem text_len data_len;
  regs.(rind Rip) <- entry;
  regs.(rind Rsp) <- mem_top;
  let m = {flags = flags; regs = regs; mem = mem} in
  push_into_stack [Imm (Lit exit_addr)] m;
  m

