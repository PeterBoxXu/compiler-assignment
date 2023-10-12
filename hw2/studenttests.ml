open Assert
open X86
open Simulator
open Gradedtests

(* You can use this file for additional test cases to help your *)
(* implementation.                                              *)

(* Caution: Consider big endian or little endian!! *)

let ind_dataseg =
  [ Byte '\x00'; Byte '\x00'; Byte '\x00'; Byte '\x00'
  ; Byte '\x10'; Byte '\x00'; Byte '\x00'; Byte '\x00'
  ; Byte '\xFF'; Byte '\xFF'; Byte '\xFF'; Byte '\xFF'
  ; Byte '\x00'; Byte '\x00'; Byte '\x00'; Byte '\x00'
  ; Byte '\x90'; Byte '\x00'; Byte '\x00'; Byte '\x00'
  ; Byte '\x00'; Byte '\x00'; Byte '\x00'; Byte '\x0F' ]

let ind_regs = Array.of_list [0x400000L; 0x400008L; 0x400010L; 0L;
                8L; 16L; 0L; 0L;
                0L; 0L; 0L; 0L;
                0L; 0L; 0L; 0L;
                exit_addr]

let test_ind_machine (bs: sbyte list) (regs: regs): mach =
  let mem = (Array.make mem_size (Byte '\x00')) in
  Array.blit (Array.of_list bs) 0 mem 0 (List.length bs);
  regs.(rind Rip) <- mem_bot;
  regs.(rind Rsp) <- Int64.sub mem_top 8L;
  { flags = {fo = false; fs = false; fz = false};
    regs = regs;
    mem = mem
  }

let interp_mach = test_ind_machine ind_dataseg ind_regs

let provided_tests : suite = [
  Test ("Debug_interp_src", [
    ("interp_binary_Ind1", assert_eqf (fun () -> 
      interp_binary_operand [Ind1 (Lit 0x400000L); Reg Rax] interp_mach) (0x1000000000L, 0));
    ("interp_binary_Ind2", assert_eqf (fun () ->
      interp_binary_operand [Ind2 (Rbx); Reg Rax] interp_mach) (0xFFFFFFFFL, 0));
    ("interp_binary_Ind3_1", assert_eqf (fun () ->
      interp_binary_operand [Ind3 (Lit 0x400000L, Rsi); Reg Rax] interp_mach) (0xFFFFFFFFL, 0));
    ("interp_binary_Ind3_2", assert_eqf (fun () ->
      interp_binary_operand [Ind3 (Lit 0x3FFFF8L, Rdi); Reg Rax] interp_mach) (0xFFFFFFFFL, 0));
    ("interp_binary_Ind3_3", assert_eqf (fun () ->
      interp_binary_operand [Ind3 (Lit 0x4000FFL, Rdi); Reg Rax] interp_mach) (0x0L, 0));
  ]);
  Test ("Debug_interp_dst", [
    ("interp_binary_Ind1", assert_eqf (fun () -> 
      interp_binary_operand [Reg R10; Ind1 (Lit 0x400010L)] interp_mach) (0x0L, 16));
    ("interp_binary_Ind2", assert_eqf (fun () ->
      interp_binary_operand [Reg R10; Ind2 (Rbx)] interp_mach) (0L, 8));
    ("interp_binary_Ind3", assert_eqf (fun () ->
      interp_binary_operand [Reg R10; Ind3 (Lit 8L, Rbx)] interp_mach) (0L, 16));
  ]);
  Test ("Debug_interp_unary", [
    ("interp_unary_Ind1", assert_eqf (fun () -> 
      interp_unary_operand [Ind1 (Lit 0x400010L)] interp_mach) (16));
    ("interp_unary_Ind2", assert_eqf (fun () ->
      interp_unary_operand [Ind2 (Rbx)] interp_mach) (8));
    ("interp_unary_Ind3", assert_eqf (fun () ->
      interp_unary_operand [Ind3 (Lit 8L, Rbx)] interp_mach) (16));
  ]);
] 
