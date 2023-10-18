open Simulator
open Assert
open X86
open Asm
open Gradedtests

let test_sub_0_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_1_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_2_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_3_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_4_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_5_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_6_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_7_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_8_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_9_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_10_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_11_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_12_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_13_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_14_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_15_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_16_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_17_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_18_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_19_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_20_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_21_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_22_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_23_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_24_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_25_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_26_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_27_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_28_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_29_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_30_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_31_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_32_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_33_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_34_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_35_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_36_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_37_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_38_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_39_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_40_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_41_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_42_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_43_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_44_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_45_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_46_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_47_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_48_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_49_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_50_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_51_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_52_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_53_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_54_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_55_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_56_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_57_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_58_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_59_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_60_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_61_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_62_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_63_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_64_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_65_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_66_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_67_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_68_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_69_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_70_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_71_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_72_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_73_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_74_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_75_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_76_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_77_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_78_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_79_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_80_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_81_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_82_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_83_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_84_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_85_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_86_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_87_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_88_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_89_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_90_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_91_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_92_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_93_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_94_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_95_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_96_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_97_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_98_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_99_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_100_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_101_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_102_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_103_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_104_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_105_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_106_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_107_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_108_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_109_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_110_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_111_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_112_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_113_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_114_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_115_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_116_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_117_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_118_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_119_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_120_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_121_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_122_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_123_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_124_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_125_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_126_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_127_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_128_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_129_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_130_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_131_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_132_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_133_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_134_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_135_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_136_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_137_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_138_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_139_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_140_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_141_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_142_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_sub_143_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Subq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let sub_tests = [
  ("sub_0", machine_test "-1 - -1 ==> 0 of=false sf=false zero=true" 4 test_sub_0_data (fun m -> Printf.printf "0 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_1", machine_test "-1 - 0 ==> -1 of=false sf=true zero=false" 4 test_sub_1_data (fun m -> Printf.printf "1 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("sub_2", machine_test "-1 - 1 ==> -2 of=false sf=true zero=false" 4 test_sub_2_data (fun m -> Printf.printf "2 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("sub_3", machine_test "-1 - -9223372036854775808 ==> 9223372036854775807 of=true sf=false zero=false" 4 test_sub_3_data (fun m -> Printf.printf "3 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("sub_4", machine_test "-1 - 9223372036854775807 ==> -9223372036854775808 of=false sf=true zero=false" 4 test_sub_4_data (fun m -> Printf.printf "4 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("sub_5", machine_test "-1 - -2401053088876216593 ==> 2401053088876216592 of=false sf=false zero=false" 4 test_sub_5_data (fun m -> Printf.printf "5 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2401053088876216592L));
  ("sub_6", machine_test "-1 - -1085102592571150096 ==> 1085102592571150095 of=false sf=false zero=false" 4 test_sub_6_data (fun m -> Printf.printf "6 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150095L));
  ("sub_7", machine_test "-1 - 1085102592571150095 ==> -1085102592571150096 of=false sf=true zero=false" 4 test_sub_7_data (fun m -> Printf.printf "7 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150096L));
  ("sub_8", machine_test "-1 - 1229782938247303441 ==> -1229782938247303442 of=false sf=true zero=false" 4 test_sub_8_data (fun m -> Printf.printf "8 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1229782938247303442L));
  ("sub_9", machine_test "-1 - -8608480567731124088 ==> 8608480567731124087 of=false sf=false zero=false" 4 test_sub_9_data (fun m -> Printf.printf "9 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8608480567731124087L));
  ("sub_10", machine_test "-1 - -9223372036854775807 ==> 9223372036854775806 of=false sf=false zero=false" 4 test_sub_10_data (fun m -> Printf.printf "10 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775806L));
  ("sub_11", machine_test "-1 - -2 ==> 1 of=false sf=false zero=false" 4 test_sub_11_data (fun m -> Printf.printf "11 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("sub_12", machine_test "0 - -1 ==> 1 of=false sf=false zero=false" 4 test_sub_12_data (fun m -> Printf.printf "12 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("sub_13", machine_test "0 - 0 ==> 0 of=false sf=false zero=true" 4 test_sub_13_data (fun m -> Printf.printf "13 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_14", machine_test "0 - 1 ==> -1 of=false sf=true zero=false" 4 test_sub_14_data (fun m -> Printf.printf "14 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("sub_15", machine_test "0 - -9223372036854775808 ==> -9223372036854775808 of=true sf=true zero=false" 4 test_sub_15_data (fun m -> Printf.printf "15 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("sub_16", machine_test "0 - 9223372036854775807 ==> -9223372036854775807 of=false sf=true zero=false" 4 test_sub_16_data (fun m -> Printf.printf "16 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("sub_17", machine_test "0 - -2401053088876216593 ==> 2401053088876216593 of=false sf=false zero=false" 4 test_sub_17_data (fun m -> Printf.printf "17 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2401053088876216593L));
  ("sub_18", machine_test "0 - -1085102592571150096 ==> 1085102592571150096 of=false sf=false zero=false" 4 test_sub_18_data (fun m -> Printf.printf "18 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150096L));
  ("sub_19", machine_test "0 - 1085102592571150095 ==> -1085102592571150095 of=false sf=true zero=false" 4 test_sub_19_data (fun m -> Printf.printf "19 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150095L));
  ("sub_20", machine_test "0 - 1229782938247303441 ==> -1229782938247303441 of=false sf=true zero=false" 4 test_sub_20_data (fun m -> Printf.printf "20 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1229782938247303441L));
  ("sub_21", machine_test "0 - -8608480567731124088 ==> 8608480567731124088 of=false sf=false zero=false" 4 test_sub_21_data (fun m -> Printf.printf "21 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8608480567731124088L));
  ("sub_22", machine_test "0 - -9223372036854775807 ==> 9223372036854775807 of=false sf=false zero=false" 4 test_sub_22_data (fun m -> Printf.printf "22 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("sub_23", machine_test "0 - -2 ==> 2 of=false sf=false zero=false" 4 test_sub_23_data (fun m -> Printf.printf "23 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("sub_24", machine_test "1 - -1 ==> 2 of=false sf=false zero=false" 4 test_sub_24_data (fun m -> Printf.printf "24 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("sub_25", machine_test "1 - 0 ==> 1 of=false sf=false zero=false" 4 test_sub_25_data (fun m -> Printf.printf "25 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("sub_26", machine_test "1 - 1 ==> 0 of=false sf=false zero=true" 4 test_sub_26_data (fun m -> Printf.printf "26 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_27", machine_test "1 - -9223372036854775808 ==> -9223372036854775807 of=true sf=true zero=false" 4 test_sub_27_data (fun m -> Printf.printf "27 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("sub_28", machine_test "1 - 9223372036854775807 ==> -9223372036854775806 of=false sf=true zero=false" 4 test_sub_28_data (fun m -> Printf.printf "28 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775806L));
  ("sub_29", machine_test "1 - -2401053088876216593 ==> 2401053088876216594 of=false sf=false zero=false" 4 test_sub_29_data (fun m -> Printf.printf "29 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2401053088876216594L));
  ("sub_30", machine_test "1 - -1085102592571150096 ==> 1085102592571150097 of=false sf=false zero=false" 4 test_sub_30_data (fun m -> Printf.printf "30 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150097L));
  ("sub_31", machine_test "1 - 1085102592571150095 ==> -1085102592571150094 of=false sf=true zero=false" 4 test_sub_31_data (fun m -> Printf.printf "31 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150094L));
  ("sub_32", machine_test "1 - 1229782938247303441 ==> -1229782938247303440 of=false sf=true zero=false" 4 test_sub_32_data (fun m -> Printf.printf "32 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1229782938247303440L));
  ("sub_33", machine_test "1 - -8608480567731124088 ==> 8608480567731124089 of=false sf=false zero=false" 4 test_sub_33_data (fun m -> Printf.printf "33 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8608480567731124089L));
  ("sub_34", machine_test "1 - -9223372036854775807 ==> -9223372036854775808 of=true sf=true zero=false" 4 test_sub_34_data (fun m -> Printf.printf "34 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("sub_35", machine_test "1 - -2 ==> 3 of=false sf=false zero=false" 4 test_sub_35_data (fun m -> Printf.printf "35 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 3L));
  ("sub_36", machine_test "-9223372036854775808 - -1 ==> -9223372036854775807 of=false sf=true zero=false" 4 test_sub_36_data (fun m -> Printf.printf "36 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("sub_37", machine_test "-9223372036854775808 - 0 ==> -9223372036854775808 of=false sf=true zero=false" 4 test_sub_37_data (fun m -> Printf.printf "37 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("sub_38", machine_test "-9223372036854775808 - 1 ==> 9223372036854775807 of=true sf=false zero=false" 4 test_sub_38_data (fun m -> Printf.printf "38 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("sub_39", machine_test "-9223372036854775808 - -9223372036854775808 ==> 0 of=true sf=false zero=true" 4 test_sub_39_data (fun m -> Printf.printf "39 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_40", machine_test "-9223372036854775808 - 9223372036854775807 ==> 1 of=true sf=false zero=false" 4 test_sub_40_data (fun m -> Printf.printf "40 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("sub_41", machine_test "-9223372036854775808 - -2401053088876216593 ==> -6822318947978559215 of=false sf=true zero=false" 4 test_sub_41_data (fun m -> Printf.printf "41 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -6822318947978559215L));
  ("sub_42", machine_test "-9223372036854775808 - -1085102592571150096 ==> -8138269444283625712 of=false sf=true zero=false" 4 test_sub_42_data (fun m -> Printf.printf "42 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625712L));
  ("sub_43", machine_test "-9223372036854775808 - 1085102592571150095 ==> 8138269444283625713 of=true sf=false zero=false" 4 test_sub_43_data (fun m -> Printf.printf "43 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625713L));
  ("sub_44", machine_test "-9223372036854775808 - 1229782938247303441 ==> 7993589098607472367 of=true sf=false zero=false" 4 test_sub_44_data (fun m -> Printf.printf "44 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7993589098607472367L));
  ("sub_45", machine_test "-9223372036854775808 - -8608480567731124088 ==> -614891469123651720 of=false sf=true zero=false" 4 test_sub_45_data (fun m -> Printf.printf "45 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -614891469123651720L));
  ("sub_46", machine_test "-9223372036854775808 - -9223372036854775807 ==> -1 of=false sf=true zero=false" 4 test_sub_46_data (fun m -> Printf.printf "46 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("sub_47", machine_test "-9223372036854775808 - -2 ==> -9223372036854775806 of=false sf=true zero=false" 4 test_sub_47_data (fun m -> Printf.printf "47 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775806L));
  ("sub_48", machine_test "9223372036854775807 - -1 ==> -9223372036854775808 of=true sf=true zero=false" 4 test_sub_48_data (fun m -> Printf.printf "48 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("sub_49", machine_test "9223372036854775807 - 0 ==> 9223372036854775807 of=false sf=false zero=false" 4 test_sub_49_data (fun m -> Printf.printf "49 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("sub_50", machine_test "9223372036854775807 - 1 ==> 9223372036854775806 of=false sf=false zero=false" 4 test_sub_50_data (fun m -> Printf.printf "50 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775806L));
  ("sub_51", machine_test "9223372036854775807 - -9223372036854775808 ==> -1 of=true sf=true zero=false" 4 test_sub_51_data (fun m -> Printf.printf "51 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("sub_52", machine_test "9223372036854775807 - 9223372036854775807 ==> 0 of=false sf=false zero=true" 4 test_sub_52_data (fun m -> Printf.printf "52 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_53", machine_test "9223372036854775807 - -2401053088876216593 ==> -6822318947978559216 of=true sf=true zero=false" 4 test_sub_53_data (fun m -> Printf.printf "53 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -6822318947978559216L));
  ("sub_54", machine_test "9223372036854775807 - -1085102592571150096 ==> -8138269444283625713 of=true sf=true zero=false" 4 test_sub_54_data (fun m -> Printf.printf "54 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625713L));
  ("sub_55", machine_test "9223372036854775807 - 1085102592571150095 ==> 8138269444283625712 of=false sf=false zero=false" 4 test_sub_55_data (fun m -> Printf.printf "55 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625712L));
  ("sub_56", machine_test "9223372036854775807 - 1229782938247303441 ==> 7993589098607472366 of=false sf=false zero=false" 4 test_sub_56_data (fun m -> Printf.printf "56 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7993589098607472366L));
  ("sub_57", machine_test "9223372036854775807 - -8608480567731124088 ==> -614891469123651721 of=true sf=true zero=false" 4 test_sub_57_data (fun m -> Printf.printf "57 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -614891469123651721L));
  ("sub_58", machine_test "9223372036854775807 - -9223372036854775807 ==> -2 of=true sf=true zero=false" 4 test_sub_58_data (fun m -> Printf.printf "58 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("sub_59", machine_test "9223372036854775807 - -2 ==> -9223372036854775807 of=true sf=true zero=false" 4 test_sub_59_data (fun m -> Printf.printf "59 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("sub_60", machine_test "-2401053088876216593 - -1 ==> -2401053088876216592 of=false sf=true zero=false" 4 test_sub_60_data (fun m -> Printf.printf "60 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216592L));
  ("sub_61", machine_test "-2401053088876216593 - 0 ==> -2401053088876216593 of=false sf=true zero=false" 4 test_sub_61_data (fun m -> Printf.printf "61 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216593L));
  ("sub_62", machine_test "-2401053088876216593 - 1 ==> -2401053088876216594 of=false sf=true zero=false" 4 test_sub_62_data (fun m -> Printf.printf "62 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216594L));
  ("sub_63", machine_test "-2401053088876216593 - -9223372036854775808 ==> 6822318947978559215 of=true sf=false zero=false" 4 test_sub_63_data (fun m -> Printf.printf "63 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559215L));
  ("sub_64", machine_test "-2401053088876216593 - 9223372036854775807 ==> 6822318947978559216 of=true sf=false zero=false" 4 test_sub_64_data (fun m -> Printf.printf "64 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559216L));
  ("sub_65", machine_test "-2401053088876216593 - -2401053088876216593 ==> 0 of=false sf=false zero=true" 4 test_sub_65_data (fun m -> Printf.printf "65 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_66", machine_test "-2401053088876216593 - -1085102592571150096 ==> -1315950496305066497 of=false sf=true zero=false" 4 test_sub_66_data (fun m -> Printf.printf "66 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1315950496305066497L));
  ("sub_67", machine_test "-2401053088876216593 - 1085102592571150095 ==> -3486155681447366688 of=false sf=true zero=false" 4 test_sub_67_data (fun m -> Printf.printf "67 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3486155681447366688L));
  ("sub_68", machine_test "-2401053088876216593 - 1229782938247303441 ==> -3630836027123520034 of=false sf=true zero=false" 4 test_sub_68_data (fun m -> Printf.printf "68 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3630836027123520034L));
  ("sub_69", machine_test "-2401053088876216593 - -8608480567731124088 ==> 6207427478854907495 of=false sf=false zero=false" 4 test_sub_69_data (fun m -> Printf.printf "69 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6207427478854907495L));
  ("sub_70", machine_test "-2401053088876216593 - -9223372036854775807 ==> 6822318947978559214 of=false sf=false zero=false" 4 test_sub_70_data (fun m -> Printf.printf "70 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 6822318947978559214L));
  ("sub_71", machine_test "-2401053088876216593 - -2 ==> -2401053088876216591 of=false sf=true zero=false" 4 test_sub_71_data (fun m -> Printf.printf "71 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216591L));
  ("sub_72", machine_test "-1085102592571150096 - -1 ==> -1085102592571150095 of=false sf=true zero=false" 4 test_sub_72_data (fun m -> Printf.printf "72 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150095L));
  ("sub_73", machine_test "-1085102592571150096 - 0 ==> -1085102592571150096 of=false sf=true zero=false" 4 test_sub_73_data (fun m -> Printf.printf "73 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150096L));
  ("sub_74", machine_test "-1085102592571150096 - 1 ==> -1085102592571150097 of=false sf=true zero=false" 4 test_sub_74_data (fun m -> Printf.printf "74 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150097L));
  ("sub_75", machine_test "-1085102592571150096 - -9223372036854775808 ==> 8138269444283625712 of=true sf=false zero=false" 4 test_sub_75_data (fun m -> Printf.printf "75 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625712L));
  ("sub_76", machine_test "-1085102592571150096 - 9223372036854775807 ==> 8138269444283625713 of=true sf=false zero=false" 4 test_sub_76_data (fun m -> Printf.printf "76 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625713L));
  ("sub_77", machine_test "-1085102592571150096 - -2401053088876216593 ==> 1315950496305066497 of=false sf=false zero=false" 4 test_sub_77_data (fun m -> Printf.printf "77 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1315950496305066497L));
  ("sub_78", machine_test "-1085102592571150096 - -1085102592571150096 ==> 0 of=false sf=false zero=true" 4 test_sub_78_data (fun m -> Printf.printf "78 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_79", machine_test "-1085102592571150096 - 1085102592571150095 ==> -2170205185142300191 of=false sf=true zero=false" 4 test_sub_79_data (fun m -> Printf.printf "79 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2170205185142300191L));
  ("sub_80", machine_test "-1085102592571150096 - 1229782938247303441 ==> -2314885530818453537 of=false sf=true zero=false" 4 test_sub_80_data (fun m -> Printf.printf "80 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2314885530818453537L));
  ("sub_81", machine_test "-1085102592571150096 - -8608480567731124088 ==> 7523377975159973992 of=false sf=false zero=false" 4 test_sub_81_data (fun m -> Printf.printf "81 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7523377975159973992L));
  ("sub_82", machine_test "-1085102592571150096 - -9223372036854775807 ==> 8138269444283625711 of=false sf=false zero=false" 4 test_sub_82_data (fun m -> Printf.printf "82 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625711L));
  ("sub_83", machine_test "-1085102592571150096 - -2 ==> -1085102592571150094 of=false sf=true zero=false" 4 test_sub_83_data (fun m -> Printf.printf "83 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150094L));
  ("sub_84", machine_test "1085102592571150095 - -1 ==> 1085102592571150096 of=false sf=false zero=false" 4 test_sub_84_data (fun m -> Printf.printf "84 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150096L));
  ("sub_85", machine_test "1085102592571150095 - 0 ==> 1085102592571150095 of=false sf=false zero=false" 4 test_sub_85_data (fun m -> Printf.printf "85 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150095L));
  ("sub_86", machine_test "1085102592571150095 - 1 ==> 1085102592571150094 of=false sf=false zero=false" 4 test_sub_86_data (fun m -> Printf.printf "86 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150094L));
  ("sub_87", machine_test "1085102592571150095 - -9223372036854775808 ==> -8138269444283625713 of=true sf=true zero=false" 4 test_sub_87_data (fun m -> Printf.printf "87 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625713L));
  ("sub_88", machine_test "1085102592571150095 - 9223372036854775807 ==> -8138269444283625712 of=false sf=true zero=false" 4 test_sub_88_data (fun m -> Printf.printf "88 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625712L));
  ("sub_89", machine_test "1085102592571150095 - -2401053088876216593 ==> 3486155681447366688 of=false sf=false zero=false" 4 test_sub_89_data (fun m -> Printf.printf "89 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 3486155681447366688L));
  ("sub_90", machine_test "1085102592571150095 - -1085102592571150096 ==> 2170205185142300191 of=false sf=false zero=false" 4 test_sub_90_data (fun m -> Printf.printf "90 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2170205185142300191L));
  ("sub_91", machine_test "1085102592571150095 - 1085102592571150095 ==> 0 of=false sf=false zero=true" 4 test_sub_91_data (fun m -> Printf.printf "91 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_92", machine_test "1085102592571150095 - 1229782938247303441 ==> -144680345676153346 of=false sf=true zero=false" 4 test_sub_92_data (fun m -> Printf.printf "92 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -144680345676153346L));
  ("sub_93", machine_test "1085102592571150095 - -8608480567731124088 ==> -8753160913407277433 of=true sf=true zero=false" 4 test_sub_93_data (fun m -> Printf.printf "93 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8753160913407277433L));
  ("sub_94", machine_test "1085102592571150095 - -9223372036854775807 ==> -8138269444283625714 of=true sf=true zero=false" 4 test_sub_94_data (fun m -> Printf.printf "94 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625714L));
  ("sub_95", machine_test "1085102592571150095 - -2 ==> 1085102592571150097 of=false sf=false zero=false" 4 test_sub_95_data (fun m -> Printf.printf "95 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150097L));
  ("sub_96", machine_test "1229782938247303441 - -1 ==> 1229782938247303442 of=false sf=false zero=false" 4 test_sub_96_data (fun m -> Printf.printf "96 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303442L));
  ("sub_97", machine_test "1229782938247303441 - 0 ==> 1229782938247303441 of=false sf=false zero=false" 4 test_sub_97_data (fun m -> Printf.printf "97 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303441L));
  ("sub_98", machine_test "1229782938247303441 - 1 ==> 1229782938247303440 of=false sf=false zero=false" 4 test_sub_98_data (fun m -> Printf.printf "98 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303440L));
  ("sub_99", machine_test "1229782938247303441 - -9223372036854775808 ==> -7993589098607472367 of=true sf=true zero=false" 4 test_sub_99_data (fun m -> Printf.printf "99 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472367L));
  ("sub_100", machine_test "1229782938247303441 - 9223372036854775807 ==> -7993589098607472366 of=false sf=true zero=false" 4 test_sub_100_data (fun m -> Printf.printf "100 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472366L));
  ("sub_101", machine_test "1229782938247303441 - -2401053088876216593 ==> 3630836027123520034 of=false sf=false zero=false" 4 test_sub_101_data (fun m -> Printf.printf "101 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 3630836027123520034L));
  ("sub_102", machine_test "1229782938247303441 - -1085102592571150096 ==> 2314885530818453537 of=false sf=false zero=false" 4 test_sub_102_data (fun m -> Printf.printf "102 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2314885530818453537L));
  ("sub_103", machine_test "1229782938247303441 - 1085102592571150095 ==> 144680345676153346 of=false sf=false zero=false" 4 test_sub_103_data (fun m -> Printf.printf "103 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 144680345676153346L));
  ("sub_104", machine_test "1229782938247303441 - 1229782938247303441 ==> 0 of=false sf=false zero=true" 4 test_sub_104_data (fun m -> Printf.printf "104 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_105", machine_test "1229782938247303441 - -8608480567731124088 ==> -8608480567731124087 of=true sf=true zero=false" 4 test_sub_105_data (fun m -> Printf.printf "105 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124087L));
  ("sub_106", machine_test "1229782938247303441 - -9223372036854775807 ==> -7993589098607472368 of=true sf=true zero=false" 4 test_sub_106_data (fun m -> Printf.printf "106 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7993589098607472368L));
  ("sub_107", machine_test "1229782938247303441 - -2 ==> 1229782938247303443 of=false sf=false zero=false" 4 test_sub_107_data (fun m -> Printf.printf "107 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303443L));
  ("sub_108", machine_test "-8608480567731124088 - -1 ==> -8608480567731124087 of=false sf=true zero=false" 4 test_sub_108_data (fun m -> Printf.printf "108 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124087L));
  ("sub_109", machine_test "-8608480567731124088 - 0 ==> -8608480567731124088 of=false sf=true zero=false" 4 test_sub_109_data (fun m -> Printf.printf "109 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124088L));
  ("sub_110", machine_test "-8608480567731124088 - 1 ==> -8608480567731124089 of=false sf=true zero=false" 4 test_sub_110_data (fun m -> Printf.printf "110 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124089L));
  ("sub_111", machine_test "-8608480567731124088 - -9223372036854775808 ==> 614891469123651720 of=true sf=false zero=false" 4 test_sub_111_data (fun m -> Printf.printf "111 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651720L));
  ("sub_112", machine_test "-8608480567731124088 - 9223372036854775807 ==> 614891469123651721 of=true sf=false zero=false" 4 test_sub_112_data (fun m -> Printf.printf "112 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651721L));
  ("sub_113", machine_test "-8608480567731124088 - -2401053088876216593 ==> -6207427478854907495 of=false sf=true zero=false" 4 test_sub_113_data (fun m -> Printf.printf "113 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -6207427478854907495L));
  ("sub_114", machine_test "-8608480567731124088 - -1085102592571150096 ==> -7523377975159973992 of=false sf=true zero=false" 4 test_sub_114_data (fun m -> Printf.printf "114 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7523377975159973992L));
  ("sub_115", machine_test "-8608480567731124088 - 1085102592571150095 ==> 8753160913407277433 of=true sf=false zero=false" 4 test_sub_115_data (fun m -> Printf.printf "115 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8753160913407277433L));
  ("sub_116", machine_test "-8608480567731124088 - 1229782938247303441 ==> 8608480567731124087 of=true sf=false zero=false" 4 test_sub_116_data (fun m -> Printf.printf "116 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8608480567731124087L));
  ("sub_117", machine_test "-8608480567731124088 - -8608480567731124088 ==> 0 of=false sf=false zero=true" 4 test_sub_117_data (fun m -> Printf.printf "117 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_118", machine_test "-8608480567731124088 - -9223372036854775807 ==> 614891469123651719 of=false sf=false zero=false" 4 test_sub_118_data (fun m -> Printf.printf "118 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651719L));
  ("sub_119", machine_test "-8608480567731124088 - -2 ==> -8608480567731124086 of=false sf=true zero=false" 4 test_sub_119_data (fun m -> Printf.printf "119 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124086L));
  ("sub_120", machine_test "-9223372036854775807 - -1 ==> -9223372036854775806 of=false sf=true zero=false" 4 test_sub_120_data (fun m -> Printf.printf "120 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775806L));
  ("sub_121", machine_test "-9223372036854775807 - 0 ==> -9223372036854775807 of=false sf=true zero=false" 4 test_sub_121_data (fun m -> Printf.printf "121 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("sub_122", machine_test "-9223372036854775807 - 1 ==> -9223372036854775808 of=false sf=true zero=false" 4 test_sub_122_data (fun m -> Printf.printf "122 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("sub_123", machine_test "-9223372036854775807 - -9223372036854775808 ==> 1 of=true sf=false zero=false" 4 test_sub_123_data (fun m -> Printf.printf "123 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("sub_124", machine_test "-9223372036854775807 - 9223372036854775807 ==> 2 of=true sf=false zero=false" 4 test_sub_124_data (fun m -> Printf.printf "124 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("sub_125", machine_test "-9223372036854775807 - -2401053088876216593 ==> -6822318947978559214 of=false sf=true zero=false" 4 test_sub_125_data (fun m -> Printf.printf "125 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -6822318947978559214L));
  ("sub_126", machine_test "-9223372036854775807 - -1085102592571150096 ==> -8138269444283625711 of=false sf=true zero=false" 4 test_sub_126_data (fun m -> Printf.printf "126 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8138269444283625711L));
  ("sub_127", machine_test "-9223372036854775807 - 1085102592571150095 ==> 8138269444283625714 of=true sf=false zero=false" 4 test_sub_127_data (fun m -> Printf.printf "127 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8138269444283625714L));
  ("sub_128", machine_test "-9223372036854775807 - 1229782938247303441 ==> 7993589098607472368 of=true sf=false zero=false" 4 test_sub_128_data (fun m -> Printf.printf "128 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7993589098607472368L));
  ("sub_129", machine_test "-9223372036854775807 - -8608480567731124088 ==> -614891469123651719 of=false sf=true zero=false" 4 test_sub_129_data (fun m -> Printf.printf "129 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -614891469123651719L));
  ("sub_130", machine_test "-9223372036854775807 - -9223372036854775807 ==> 0 of=false sf=false zero=true" 4 test_sub_130_data (fun m -> Printf.printf "130 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("sub_131", machine_test "-9223372036854775807 - -2 ==> -9223372036854775805 of=false sf=true zero=false" 4 test_sub_131_data (fun m -> Printf.printf "131 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775805L));
  ("sub_132", machine_test "-2 - -1 ==> -1 of=false sf=true zero=false" 4 test_sub_132_data (fun m -> Printf.printf "132 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("sub_133", machine_test "-2 - 0 ==> -2 of=false sf=true zero=false" 4 test_sub_133_data (fun m -> Printf.printf "133 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("sub_134", machine_test "-2 - 1 ==> -3 of=false sf=true zero=false" 4 test_sub_134_data (fun m -> Printf.printf "134 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3L));
  ("sub_135", machine_test "-2 - -9223372036854775808 ==> 9223372036854775806 of=true sf=false zero=false" 4 test_sub_135_data (fun m -> Printf.printf "135 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775806L));
  ("sub_136", machine_test "-2 - 9223372036854775807 ==> 9223372036854775807 of=true sf=false zero=false" 4 test_sub_136_data (fun m -> Printf.printf "136 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("sub_137", machine_test "-2 - -2401053088876216593 ==> 2401053088876216591 of=false sf=false zero=false" 4 test_sub_137_data (fun m -> Printf.printf "137 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2401053088876216591L));
  ("sub_138", machine_test "-2 - -1085102592571150096 ==> 1085102592571150094 of=false sf=false zero=false" 4 test_sub_138_data (fun m -> Printf.printf "138 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150094L));
  ("sub_139", machine_test "-2 - 1085102592571150095 ==> -1085102592571150097 of=false sf=true zero=false" 4 test_sub_139_data (fun m -> Printf.printf "139 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150097L));
  ("sub_140", machine_test "-2 - 1229782938247303441 ==> -1229782938247303443 of=false sf=true zero=false" 4 test_sub_140_data (fun m -> Printf.printf "140 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1229782938247303443L));
  ("sub_141", machine_test "-2 - -8608480567731124088 ==> 8608480567731124086 of=false sf=false zero=false" 4 test_sub_141_data (fun m -> Printf.printf "141 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8608480567731124086L));
  ("sub_142", machine_test "-2 - -9223372036854775807 ==> 9223372036854775805 of=false sf=false zero=false" 4 test_sub_142_data (fun m -> Printf.printf "142 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775805L));
  ("sub_143", machine_test "-2 - -2 ==> 0 of=false sf=false zero=true" 4 test_sub_143_data (fun m -> Printf.printf "143 ==> %s, of=%B,sf=%B,zf=%B
" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
]

let other_team_tests = GradedTest("sub_tests", 5, sub_tests)