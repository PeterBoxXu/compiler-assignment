open Simulator
open Assert
open X86
open Asm
open Gradedtests

let test_add_0_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_1_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_2_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_3_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_4_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_5_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_6_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_7_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_8_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_9_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_10_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_11_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_12_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_13_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_14_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_15_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_16_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_17_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_18_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_19_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_20_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_21_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_22_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_23_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_24_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_25_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_26_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_27_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_28_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_29_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_30_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_31_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_32_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_33_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_34_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_35_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_36_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_37_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_38_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_39_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_40_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_41_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_42_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_43_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_44_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_45_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_46_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_47_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_48_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_49_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_50_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_51_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_52_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_53_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_54_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_55_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_56_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_57_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_58_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_59_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_60_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_61_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_62_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_63_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_64_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_65_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_66_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_67_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_68_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_69_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_70_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_71_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_72_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_73_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_74_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_75_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_76_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_77_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_78_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_79_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_80_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_81_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_82_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_83_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_84_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_85_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_86_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_87_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_88_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_89_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_90_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_91_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_92_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_93_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_94_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_95_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_96_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_97_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_98_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_99_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_100_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_101_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_102_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_103_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_104_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_105_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_106_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_107_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_108_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_109_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_110_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_111_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_112_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_113_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_114_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_115_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_116_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_117_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_118_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_119_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_120_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_121_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_122_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_123_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_124_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_125_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_126_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_127_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_128_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_129_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_130_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_131_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_132_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_133_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_134_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_135_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_136_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_137_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_138_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_139_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_140_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_141_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_142_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_add_143_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Addq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let add_tests = [
  ("add_0", machine_test "-1 + -1 ==> -2 of=false sf=true zero=false" 4 test_add_0_data (fun m -> Printf.printf "0 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("add_1", machine_test "-1 + 0 ==> -1 of=false sf=true zero=false" 4 test_add_1_data (fun m -> Printf.printf "1 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_2", machine_test "-1 + 1 ==> 0 of=false sf=false zero=true" 4 test_add_2_data (fun m -> Printf.printf "2 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("add_3", machine_test "-1 + -9223372036854775808 ==> 9223372036854775807 of=true sf=false zero=false" 4 test_add_3_data (fun m -> Printf.printf "3 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("add_4", machine_test "-1 + 9223372036854775807 ==> 9223372036854775806 of=false sf=false zero=false" 4 test_add_4_data (fun m -> Printf.printf "4 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775806L));
  ("add_5", machine_test "-1 + -2401053088876216593 ==> -2401053088876216594 of=false sf=true zero=false" 4 test_add_5_data (fun m -> Printf.printf "5 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216594L));
  ("add_6", machine_test "-1 + -1085102592571150096 ==> -1085102592571150097 of=false sf=true zero=false" 4 test_add_6_data (fun m -> Printf.printf "6 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150097L));
  ("add_7", machine_test "-1 + 1085102592571150095 ==> 1085102592571150094 of=false sf=false zero=false" 4 test_add_7_data (fun m -> Printf.printf "7 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150094L));
  ("add_8", machine_test "-1 + 1229782938247303441 ==> 1229782938247303440 of=false sf=false zero=false" 4 test_add_8_data (fun m -> Printf.printf "8 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303440L));
  ("add_9", machine_test "-1 + -8608480567731124088 ==> -8608480567731124089 of=false sf=true zero=false" 4 test_add_9_data (fun m -> Printf.printf "9 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124089L));
  ("add_10", machine_test "-1 + -9223372036854775807 ==> -9223372036854775808 of=false sf=true zero=false" 4 test_add_10_data (fun m -> Printf.printf "10 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("add_11", machine_test "-1 + -2 ==> -3 of=false sf=true zero=false" 4 test_add_11_data (fun m -> Printf.printf "11 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3L));
  ("add_12", machine_test "0 + -1 ==> -1 of=false sf=true zero=false" 4 test_add_12_data (fun m -> Printf.printf "12 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_13", machine_test "0 + 0 ==> 0 of=false sf=false zero=true" 4 test_add_13_data (fun m -> Printf.printf "13 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("add_14", machine_test "0 + 1 ==> 1 of=false sf=false zero=false" 4 test_add_14_data (fun m -> Printf.printf "14 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("add_15", machine_test "0 + -9223372036854775808 ==> -9223372036854775808 of=false sf=true zero=false" 4 test_add_15_data (fun m -> Printf.printf "15 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("add_16", machine_test "0 + 9223372036854775807 ==> 9223372036854775807 of=false sf=false zero=false" 4 test_add_16_data (fun m -> Printf.printf "16 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("add_17", machine_test "0 + -2401053088876216593 ==> -2401053088876216593 of=false sf=true zero=false" 4 test_add_17_data (fun m -> Printf.printf "17 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216593L));
  ("add_18", machine_test "0 + -1085102592571150096 ==> -1085102592571150096 of=false sf=true zero=false" 4 test_add_18_data (fun m -> Printf.printf "18 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150096L));
  ("add_19", machine_test "0 + 1085102592571150095 ==> 1085102592571150095 of=false sf=false zero=false" 4 test_add_19_data (fun m -> Printf.printf "19 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150095L));
  ("add_20", machine_test "0 + 1229782938247303441 ==> 1229782938247303441 of=false sf=false zero=false" 4 test_add_20_data (fun m -> Printf.printf "20 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303441L));
  ("add_21", machine_test "0 + -8608480567731124088 ==> -8608480567731124088 of=false sf=true zero=false" 4 test_add_21_data (fun m -> Printf.printf "21 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124088L));
  ("add_22", machine_test "0 + -9223372036854775807 ==> -9223372036854775807 of=false sf=true zero=false" 4 test_add_22_data (fun m -> Printf.printf "22 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("add_23", machine_test "0 + -2 ==> -2 of=false sf=true zero=false" 4 test_add_23_data (fun m -> Printf.printf "23 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("add_24", machine_test "1 + -1 ==> 0 of=false sf=false zero=true" 4 test_add_24_data (fun m -> Printf.printf "24 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("add_25", machine_test "1 + 0 ==> 1 of=false sf=false zero=false" 4 test_add_25_data (fun m -> Printf.printf "25 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("add_26", machine_test "1 + 1 ==> 2 of=false sf=false zero=false" 4 test_add_26_data (fun m -> Printf.printf "26 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("add_27", machine_test "1 + -9223372036854775808 ==> -9223372036854775807 of=false sf=true zero=false" 4 test_add_27_data (fun m -> Printf.printf "27 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("add_28", machine_test "1 + 9223372036854775807 ==> -9223372036854775808 of=true sf=true zero=false" 4 test_add_28_data (fun m -> Printf.printf "28 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("add_29", machine_test "1 + -2401053088876216593 ==> -2401053088876216592 of=false sf=true zero=false" 4 test_add_29_data (fun m -> Printf.printf "29 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216592L));
  ("add_30", machine_test "1 + -1085102592571150096 ==> -1085102592571150095 of=false sf=true zero=false" 4 test_add_30_data (fun m -> Printf.printf "30 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150095L));
  ("add_31", machine_test "1 + 1085102592571150095 ==> 1085102592571150096 of=false sf=false zero=false" 4 test_add_31_data (fun m -> Printf.printf "31 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150096L));
  ("add_32", machine_test "1 + 1229782938247303441 ==> 1229782938247303442 of=false sf=false zero=false" 4 test_add_32_data (fun m -> Printf.printf "32 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303442L));
  ("add_33", machine_test "1 + -8608480567731124088 ==> -8608480567731124087 of=false sf=true zero=false" 4 test_add_33_data (fun m -> Printf.printf "33 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124087L));
  ("add_34", machine_test "1 + -9223372036854775807 ==> -9223372036854775806 of=false sf=true zero=false" 4 test_add_34_data (fun m -> Printf.printf "34 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775806L));
  ("add_35", machine_test "1 + -2 ==> -1 of=false sf=true zero=false" 4 test_add_35_data (fun m -> Printf.printf "35 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_36", machine_test "-9223372036854775808 + -1 ==> 9223372036854775807 of=true sf=false zero=false" 4 test_add_36_data (fun m -> Printf.printf "36 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("add_37", machine_test "-9223372036854775808 + 0 ==> -9223372036854775808 of=false sf=true zero=false" 4 test_add_37_data (fun m -> Printf.printf "37 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("add_38", machine_test "-9223372036854775808 + 1 ==> -9223372036854775807 of=false sf=true zero=false" 4 test_add_38_data (fun m -> Printf.printf "38 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("add_39", machine_test "-9223372036854775808 + -9223372036854775808 ==> 0 of=true sf=false zero=true" 4 test_add_39_data (fun m -> Printf.printf "39 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("add_40", machine_test "-9223372036854775808 + 9223372036854775807 ==> -1 of=false sf=true zero=false" 4 test_add_40_data (fun m -> Printf.printf "40 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_41", machine_test "-9223372036854775808 + -2401053088876216593 ==> 6822318947978559215 of=true sf=false zero=false" 4 test_add_41_data (fun m -> Printf.printf "41 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559215L));
  ("add_42", machine_test "-9223372036854775808 + -1085102592571150096 ==> 8138269444283625712 of=true sf=false zero=false" 4 test_add_42_data (fun m -> Printf.printf "42 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625712L));
  ("add_43", machine_test "-9223372036854775808 + 1085102592571150095 ==> -8138269444283625713 of=false sf=true zero=false" 4 test_add_43_data (fun m -> Printf.printf "43 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625713L));
  ("add_44", machine_test "-9223372036854775808 + 1229782938247303441 ==> -7993589098607472367 of=false sf=true zero=false" 4 test_add_44_data (fun m -> Printf.printf "44 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472367L));
  ("add_45", machine_test "-9223372036854775808 + -8608480567731124088 ==> 614891469123651720 of=true sf=false zero=false" 4 test_add_45_data (fun m -> Printf.printf "45 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651720L));
  ("add_46", machine_test "-9223372036854775808 + -9223372036854775807 ==> 1 of=true sf=false zero=false" 4 test_add_46_data (fun m -> Printf.printf "46 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("add_47", machine_test "-9223372036854775808 + -2 ==> 9223372036854775806 of=true sf=false zero=false" 4 test_add_47_data (fun m -> Printf.printf "47 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775806L));
  ("add_48", machine_test "9223372036854775807 + -1 ==> 9223372036854775806 of=false sf=false zero=false" 4 test_add_48_data (fun m -> Printf.printf "48 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775806L));
  ("add_49", machine_test "9223372036854775807 + 0 ==> 9223372036854775807 of=false sf=false zero=false" 4 test_add_49_data (fun m -> Printf.printf "49 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("add_50", machine_test "9223372036854775807 + 1 ==> -9223372036854775808 of=true sf=true zero=false" 4 test_add_50_data (fun m -> Printf.printf "50 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("add_51", machine_test "9223372036854775807 + -9223372036854775808 ==> -1 of=false sf=true zero=false" 4 test_add_51_data (fun m -> Printf.printf "51 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_52", machine_test "9223372036854775807 + 9223372036854775807 ==> -2 of=true sf=true zero=false" 4 test_add_52_data (fun m -> Printf.printf "52 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("add_53", machine_test "9223372036854775807 + -2401053088876216593 ==> 6822318947978559214 of=false sf=false zero=false" 4 test_add_53_data (fun m -> Printf.printf "53 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559214L));
  ("add_54", machine_test "9223372036854775807 + -1085102592571150096 ==> 8138269444283625711 of=false sf=false zero=false" 4 test_add_54_data (fun m -> Printf.printf "54 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625711L));
  ("add_55", machine_test "9223372036854775807 + 1085102592571150095 ==> -8138269444283625714 of=true sf=true zero=false" 4 test_add_55_data (fun m -> Printf.printf "55 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625714L));
  ("add_56", machine_test "9223372036854775807 + 1229782938247303441 ==> -7993589098607472368 of=true sf=true zero=false" 4 test_add_56_data (fun m -> Printf.printf "56 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472368L));
  ("add_57", machine_test "9223372036854775807 + -8608480567731124088 ==> 614891469123651719 of=false sf=false zero=false" 4 test_add_57_data (fun m -> Printf.printf "57 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651719L));
  ("add_58", machine_test "9223372036854775807 + -9223372036854775807 ==> 0 of=false sf=false zero=true" 4 test_add_58_data (fun m -> Printf.printf "58 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("add_59", machine_test "9223372036854775807 + -2 ==> 9223372036854775805 of=false sf=false zero=false" 4 test_add_59_data (fun m -> Printf.printf "59 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775805L));
  ("add_60", machine_test "-2401053088876216593 + -1 ==> -2401053088876216594 of=false sf=true zero=false" 4 test_add_60_data (fun m -> Printf.printf "60 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216594L));
  ("add_61", machine_test "-2401053088876216593 + 0 ==> -2401053088876216593 of=false sf=true zero=false" 4 test_add_61_data (fun m -> Printf.printf "61 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216593L));
  ("add_62", machine_test "-2401053088876216593 + 1 ==> -2401053088876216592 of=false sf=true zero=false" 4 test_add_62_data (fun m -> Printf.printf "62 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216592L));
  ("add_63", machine_test "-2401053088876216593 + -9223372036854775808 ==> 6822318947978559215 of=true sf=false zero=false" 4 test_add_63_data (fun m -> Printf.printf "63 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559215L));
  ("add_64", machine_test "-2401053088876216593 + 9223372036854775807 ==> 6822318947978559214 of=false sf=false zero=false" 4 test_add_64_data (fun m -> Printf.printf "64 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559214L));
  ("add_65", machine_test "-2401053088876216593 + -2401053088876216593 ==> -4802106177752433186 of=false sf=true zero=false" 4 test_add_65_data (fun m -> Printf.printf "65 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4802106177752433186L));
  ("add_66", machine_test "-2401053088876216593 + -1085102592571150096 ==> -3486155681447366689 of=false sf=true zero=false" 4 test_add_66_data (fun m -> Printf.printf "66 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3486155681447366689L));
  ("add_67", machine_test "-2401053088876216593 + 1085102592571150095 ==> -1315950496305066498 of=false sf=true zero=false" 4 test_add_67_data (fun m -> Printf.printf "67 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1315950496305066498L));
  ("add_68", machine_test "-2401053088876216593 + 1229782938247303441 ==> -1171270150628913152 of=false sf=true zero=false" 4 test_add_68_data (fun m -> Printf.printf "68 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1171270150628913152L));
  ("add_69", machine_test "-2401053088876216593 + -8608480567731124088 ==> 7437210417102210935 of=true sf=false zero=false" 4 test_add_69_data (fun m -> Printf.printf "69 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7437210417102210935L));
  ("add_70", machine_test "-2401053088876216593 + -9223372036854775807 ==> 6822318947978559216 of=true sf=false zero=false" 4 test_add_70_data (fun m -> Printf.printf "70 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559216L));
  ("add_71", machine_test "-2401053088876216593 + -2 ==> -2401053088876216595 of=false sf=true zero=false" 4 test_add_71_data (fun m -> Printf.printf "71 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216595L));
  ("add_72", machine_test "-1085102592571150096 + -1 ==> -1085102592571150097 of=false sf=true zero=false" 4 test_add_72_data (fun m -> Printf.printf "72 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150097L));
  ("add_73", machine_test "-1085102592571150096 + 0 ==> -1085102592571150096 of=false sf=true zero=false" 4 test_add_73_data (fun m -> Printf.printf "73 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150096L));
  ("add_74", machine_test "-1085102592571150096 + 1 ==> -1085102592571150095 of=false sf=true zero=false" 4 test_add_74_data (fun m -> Printf.printf "74 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150095L));
  ("add_75", machine_test "-1085102592571150096 + -9223372036854775808 ==> 8138269444283625712 of=true sf=false zero=false" 4 test_add_75_data (fun m -> Printf.printf "75 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625712L));
  ("add_76", machine_test "-1085102592571150096 + 9223372036854775807 ==> 8138269444283625711 of=false sf=false zero=false" 4 test_add_76_data (fun m -> Printf.printf "76 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625711L));
  ("add_77", machine_test "-1085102592571150096 + -2401053088876216593 ==> -3486155681447366689 of=false sf=true zero=false" 4 test_add_77_data (fun m -> Printf.printf "77 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3486155681447366689L));
  ("add_78", machine_test "-1085102592571150096 + -1085102592571150096 ==> -2170205185142300192 of=false sf=true zero=false" 4 test_add_78_data (fun m -> Printf.printf "78 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2170205185142300192L));
  ("add_79", machine_test "-1085102592571150096 + 1085102592571150095 ==> -1 of=false sf=true zero=false" 4 test_add_79_data (fun m -> Printf.printf "79 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_80", machine_test "-1085102592571150096 + 1229782938247303441 ==> 144680345676153345 of=false sf=false zero=false" 4 test_add_80_data (fun m -> Printf.printf "80 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 144680345676153345L));
  ("add_81", machine_test "-1085102592571150096 + -8608480567731124088 ==> 8753160913407277432 of=true sf=false zero=false" 4 test_add_81_data (fun m -> Printf.printf "81 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8753160913407277432L));
  ("add_82", machine_test "-1085102592571150096 + -9223372036854775807 ==> 8138269444283625713 of=true sf=false zero=false" 4 test_add_82_data (fun m -> Printf.printf "82 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625713L));
  ("add_83", machine_test "-1085102592571150096 + -2 ==> -1085102592571150098 of=false sf=true zero=false" 4 test_add_83_data (fun m -> Printf.printf "83 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150098L));
  ("add_84", machine_test "1085102592571150095 + -1 ==> 1085102592571150094 of=false sf=false zero=false" 4 test_add_84_data (fun m -> Printf.printf "84 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150094L));
  ("add_85", machine_test "1085102592571150095 + 0 ==> 1085102592571150095 of=false sf=false zero=false" 4 test_add_85_data (fun m -> Printf.printf "85 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150095L));
  ("add_86", machine_test "1085102592571150095 + 1 ==> 1085102592571150096 of=false sf=false zero=false" 4 test_add_86_data (fun m -> Printf.printf "86 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150096L));
  ("add_87", machine_test "1085102592571150095 + -9223372036854775808 ==> -8138269444283625713 of=false sf=true zero=false" 4 test_add_87_data (fun m -> Printf.printf "87 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625713L));
  ("add_88", machine_test "1085102592571150095 + 9223372036854775807 ==> -8138269444283625714 of=true sf=true zero=false" 4 test_add_88_data (fun m -> Printf.printf "88 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625714L));
  ("add_89", machine_test "1085102592571150095 + -2401053088876216593 ==> -1315950496305066498 of=false sf=true zero=false" 4 test_add_89_data (fun m -> Printf.printf "89 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1315950496305066498L));
  ("add_90", machine_test "1085102592571150095 + -1085102592571150096 ==> -1 of=false sf=true zero=false" 4 test_add_90_data (fun m -> Printf.printf "90 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_91", machine_test "1085102592571150095 + 1085102592571150095 ==> 2170205185142300190 of=false sf=false zero=false" 4 test_add_91_data (fun m -> Printf.printf "91 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2170205185142300190L));
  ("add_92", machine_test "1085102592571150095 + 1229782938247303441 ==> 2314885530818453536 of=false sf=false zero=false" 4 test_add_92_data (fun m -> Printf.printf "92 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2314885530818453536L));
  ("add_93", machine_test "1085102592571150095 + -8608480567731124088 ==> -7523377975159973993 of=false sf=true zero=false" 4 test_add_93_data (fun m -> Printf.printf "93 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7523377975159973993L));
  ("add_94", machine_test "1085102592571150095 + -9223372036854775807 ==> -8138269444283625712 of=false sf=true zero=false" 4 test_add_94_data (fun m -> Printf.printf "94 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625712L));
  ("add_95", machine_test "1085102592571150095 + -2 ==> 1085102592571150093 of=false sf=false zero=false" 4 test_add_95_data (fun m -> Printf.printf "95 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150093L));
  ("add_96", machine_test "1229782938247303441 + -1 ==> 1229782938247303440 of=false sf=false zero=false" 4 test_add_96_data (fun m -> Printf.printf "96 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303440L));
  ("add_97", machine_test "1229782938247303441 + 0 ==> 1229782938247303441 of=false sf=false zero=false" 4 test_add_97_data (fun m -> Printf.printf "97 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303441L));
  ("add_98", machine_test "1229782938247303441 + 1 ==> 1229782938247303442 of=false sf=false zero=false" 4 test_add_98_data (fun m -> Printf.printf "98 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303442L));
  ("add_99", machine_test "1229782938247303441 + -9223372036854775808 ==> -7993589098607472367 of=false sf=true zero=false" 4 test_add_99_data (fun m -> Printf.printf "99 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472367L));
  ("add_100", machine_test "1229782938247303441 + 9223372036854775807 ==> -7993589098607472368 of=true sf=true zero=false" 4 test_add_100_data (fun m -> Printf.printf "100 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472368L));
  ("add_101", machine_test "1229782938247303441 + -2401053088876216593 ==> -1171270150628913152 of=false sf=true zero=false" 4 test_add_101_data (fun m -> Printf.printf "101 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1171270150628913152L));
  ("add_102", machine_test "1229782938247303441 + -1085102592571150096 ==> 144680345676153345 of=false sf=false zero=false" 4 test_add_102_data (fun m -> Printf.printf "102 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 144680345676153345L));
  ("add_103", machine_test "1229782938247303441 + 1085102592571150095 ==> 2314885530818453536 of=false sf=false zero=false" 4 test_add_103_data (fun m -> Printf.printf "103 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2314885530818453536L));
  ("add_104", machine_test "1229782938247303441 + 1229782938247303441 ==> 2459565876494606882 of=false sf=false zero=false" 4 test_add_104_data (fun m -> Printf.printf "104 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2459565876494606882L));
  ("add_105", machine_test "1229782938247303441 + -8608480567731124088 ==> -7378697629483820647 of=false sf=true zero=false" 4 test_add_105_data (fun m -> Printf.printf "105 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7378697629483820647L));
  ("add_106", machine_test "1229782938247303441 + -9223372036854775807 ==> -7993589098607472366 of=false sf=true zero=false" 4 test_add_106_data (fun m -> Printf.printf "106 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472366L));
  ("add_107", machine_test "1229782938247303441 + -2 ==> 1229782938247303439 of=false sf=false zero=false" 4 test_add_107_data (fun m -> Printf.printf "107 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303439L));
  ("add_108", machine_test "-8608480567731124088 + -1 ==> -8608480567731124089 of=false sf=true zero=false" 4 test_add_108_data (fun m -> Printf.printf "108 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124089L));
  ("add_109", machine_test "-8608480567731124088 + 0 ==> -8608480567731124088 of=false sf=true zero=false" 4 test_add_109_data (fun m -> Printf.printf "109 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124088L));
  ("add_110", machine_test "-8608480567731124088 + 1 ==> -8608480567731124087 of=false sf=true zero=false" 4 test_add_110_data (fun m -> Printf.printf "110 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124087L));
  ("add_111", machine_test "-8608480567731124088 + -9223372036854775808 ==> 614891469123651720 of=true sf=false zero=false" 4 test_add_111_data (fun m -> Printf.printf "111 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651720L));
  ("add_112", machine_test "-8608480567731124088 + 9223372036854775807 ==> 614891469123651719 of=false sf=false zero=false" 4 test_add_112_data (fun m -> Printf.printf "112 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651719L));
  ("add_113", machine_test "-8608480567731124088 + -2401053088876216593 ==> 7437210417102210935 of=true sf=false zero=false" 4 test_add_113_data (fun m -> Printf.printf "113 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7437210417102210935L));
  ("add_114", machine_test "-8608480567731124088 + -1085102592571150096 ==> 8753160913407277432 of=true sf=false zero=false" 4 test_add_114_data (fun m -> Printf.printf "114 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8753160913407277432L));
  ("add_115", machine_test "-8608480567731124088 + 1085102592571150095 ==> -7523377975159973993 of=false sf=true zero=false" 4 test_add_115_data (fun m -> Printf.printf "115 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7523377975159973993L));
  ("add_116", machine_test "-8608480567731124088 + 1229782938247303441 ==> -7378697629483820647 of=false sf=true zero=false" 4 test_add_116_data (fun m -> Printf.printf "116 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7378697629483820647L));
  ("add_117", machine_test "-8608480567731124088 + -8608480567731124088 ==> 1229782938247303440 of=true sf=false zero=false" 4 test_add_117_data (fun m -> Printf.printf "117 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303440L));
  ("add_118", machine_test "-8608480567731124088 + -9223372036854775807 ==> 614891469123651721 of=true sf=false zero=false" 4 test_add_118_data (fun m -> Printf.printf "118 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651721L));
  ("add_119", machine_test "-8608480567731124088 + -2 ==> -8608480567731124090 of=false sf=true zero=false" 4 test_add_119_data (fun m -> Printf.printf "119 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124090L));
  ("add_120", machine_test "-9223372036854775807 + -1 ==> -9223372036854775808 of=false sf=true zero=false" 4 test_add_120_data (fun m -> Printf.printf "120 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("add_121", machine_test "-9223372036854775807 + 0 ==> -9223372036854775807 of=false sf=true zero=false" 4 test_add_121_data (fun m -> Printf.printf "121 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("add_122", machine_test "-9223372036854775807 + 1 ==> -9223372036854775806 of=false sf=true zero=false" 4 test_add_122_data (fun m -> Printf.printf "122 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775806L));
  ("add_123", machine_test "-9223372036854775807 + -9223372036854775808 ==> 1 of=true sf=false zero=false" 4 test_add_123_data (fun m -> Printf.printf "123 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("add_124", machine_test "-9223372036854775807 + 9223372036854775807 ==> 0 of=false sf=false zero=true" 4 test_add_124_data (fun m -> Printf.printf "124 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("add_125", machine_test "-9223372036854775807 + -2401053088876216593 ==> 6822318947978559216 of=true sf=false zero=false" 4 test_add_125_data (fun m -> Printf.printf "125 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559216L));
  ("add_126", machine_test "-9223372036854775807 + -1085102592571150096 ==> 8138269444283625713 of=true sf=false zero=false" 4 test_add_126_data (fun m -> Printf.printf "126 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625713L));
  ("add_127", machine_test "-9223372036854775807 + 1085102592571150095 ==> -8138269444283625712 of=false sf=true zero=false" 4 test_add_127_data (fun m -> Printf.printf "127 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625712L));
  ("add_128", machine_test "-9223372036854775807 + 1229782938247303441 ==> -7993589098607472366 of=false sf=true zero=false" 4 test_add_128_data (fun m -> Printf.printf "128 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472366L));
  ("add_129", machine_test "-9223372036854775807 + -8608480567731124088 ==> 614891469123651721 of=true sf=false zero=false" 4 test_add_129_data (fun m -> Printf.printf "129 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651721L));
  ("add_130", machine_test "-9223372036854775807 + -9223372036854775807 ==> 2 of=true sf=false zero=false" 4 test_add_130_data (fun m -> Printf.printf "130 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("add_131", machine_test "-9223372036854775807 + -2 ==> 9223372036854775807 of=true sf=false zero=false" 4 test_add_131_data (fun m -> Printf.printf "131 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("add_132", machine_test "-2 + -1 ==> -3 of=false sf=true zero=false" 4 test_add_132_data (fun m -> Printf.printf "132 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3L));
  ("add_133", machine_test "-2 + 0 ==> -2 of=false sf=true zero=false" 4 test_add_133_data (fun m -> Printf.printf "133 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("add_134", machine_test "-2 + 1 ==> -1 of=false sf=true zero=false" 4 test_add_134_data (fun m -> Printf.printf "134 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("add_135", machine_test "-2 + -9223372036854775808 ==> 9223372036854775806 of=true sf=false zero=false" 4 test_add_135_data (fun m -> Printf.printf "135 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775806L));
  ("add_136", machine_test "-2 + 9223372036854775807 ==> 9223372036854775805 of=false sf=false zero=false" 4 test_add_136_data (fun m -> Printf.printf "136 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775805L));
  ("add_137", machine_test "-2 + -2401053088876216593 ==> -2401053088876216595 of=false sf=true zero=false" 4 test_add_137_data (fun m -> Printf.printf "137 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216595L));
  ("add_138", machine_test "-2 + -1085102592571150096 ==> -1085102592571150098 of=false sf=true zero=false" 4 test_add_138_data (fun m -> Printf.printf "138 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150098L));
  ("add_139", machine_test "-2 + 1085102592571150095 ==> 1085102592571150093 of=false sf=false zero=false" 4 test_add_139_data (fun m -> Printf.printf "139 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150093L));
  ("add_140", machine_test "-2 + 1229782938247303441 ==> 1229782938247303439 of=false sf=false zero=false" 4 test_add_140_data (fun m -> Printf.printf "140 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303439L));
  ("add_141", machine_test "-2 + -8608480567731124088 ==> -8608480567731124090 of=false sf=true zero=false" 4 test_add_141_data (fun m -> Printf.printf "141 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124090L));
  ("add_142", machine_test "-2 + -9223372036854775807 ==> 9223372036854775807 of=true sf=false zero=false" 4 test_add_142_data (fun m -> Printf.printf "142 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("add_143", machine_test "-2 + -2 ==> -4 of=false sf=true zero=false" 4 test_add_143_data (fun m -> Printf.printf "143 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4L));
]

let other_team_tests = GradedTest("add_tests", 5, add_tests)
