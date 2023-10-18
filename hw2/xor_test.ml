open Simulator
open Assert
open X86
open Asm
open Gradedtests

let test_xor_0_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_1_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_2_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_3_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_4_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_5_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_6_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_7_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_8_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_9_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_10_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_11_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_12_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_13_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_14_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_15_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_16_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_17_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_18_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_19_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_20_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_21_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_22_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_23_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_24_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_25_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_26_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_27_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_28_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_29_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_30_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_31_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_32_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_33_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_34_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_35_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_36_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_37_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_38_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_39_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_40_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_41_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_42_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_43_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_44_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_45_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_46_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_47_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_48_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_49_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_50_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_51_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_52_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_53_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_54_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_55_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_56_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_57_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_58_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_59_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_60_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_61_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_62_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_63_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_64_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_65_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_66_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_67_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_68_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_69_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_70_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_71_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_72_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_73_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_74_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_75_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_76_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_77_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_78_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_79_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_80_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_81_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_82_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_83_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_84_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_85_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_86_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_87_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_88_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_89_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_90_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_91_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_92_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_93_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_94_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_95_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_96_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_97_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_98_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_99_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_100_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_101_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_102_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_103_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_104_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_105_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_106_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_107_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_108_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_109_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_110_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_111_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_112_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_113_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_114_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_115_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_116_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_117_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_118_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_119_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_120_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_121_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_122_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_123_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_124_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_125_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_126_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_127_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_128_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_129_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_130_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_131_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_132_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_133_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_134_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_135_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_136_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_137_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_138_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_139_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_140_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_141_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_142_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_xor_143_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let xor_tests = [
  ("xor_0", machine_test "xor_test_0" 4 test_xor_0_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_1", machine_test "xor_test_1" 4 test_xor_1_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_2", machine_test "xor_test_2" 4 test_xor_2_data (fun m -> m.regs.(rind Rax) = -2L));
  ("xor_3", machine_test "xor_test_3" 4 test_xor_3_data (fun m -> m.regs.(rind Rax) = 9223372036854775807L));
  ("xor_4", machine_test "xor_test_4" 4 test_xor_4_data (fun m -> m.regs.(rind Rax) = -9223372036854775808L));
  ("xor_5", machine_test "xor_test_5" 4 test_xor_5_data (fun m -> m.regs.(rind Rax) = 2401053088876216592L));
  ("xor_6", machine_test "xor_test_6" 4 test_xor_6_data (fun m -> m.regs.(rind Rax) = 1085102592571150095L));
  ("xor_7", machine_test "xor_test_7" 4 test_xor_7_data (fun m -> m.regs.(rind Rax) = -1085102592571150096L));
  ("xor_8", machine_test "xor_test_8" 4 test_xor_8_data (fun m -> m.regs.(rind Rax) = -1229782938247303442L));
  ("xor_9", machine_test "xor_test_9" 4 test_xor_9_data (fun m -> m.regs.(rind Rax) = 8608480567731124087L));
  ("xor_10", machine_test "xor_test_10" 4 test_xor_10_data (fun m -> m.regs.(rind Rax) = 9223372036854775806L));
  ("xor_11", machine_test "xor_test_11" 4 test_xor_11_data (fun m -> m.regs.(rind Rax) = 1L));
  ("xor_12", machine_test "xor_test_12" 4 test_xor_12_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_13", machine_test "xor_test_13" 4 test_xor_13_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_14", machine_test "xor_test_14" 4 test_xor_14_data (fun m -> m.regs.(rind Rax) = 1L));
  ("xor_15", machine_test "xor_test_15" 4 test_xor_15_data (fun m -> m.regs.(rind Rax) = -9223372036854775808L));
  ("xor_16", machine_test "xor_test_16" 4 test_xor_16_data (fun m -> m.regs.(rind Rax) = 9223372036854775807L));
  ("xor_17", machine_test "xor_test_17" 4 test_xor_17_data (fun m -> m.regs.(rind Rax) = -2401053088876216593L));
  ("xor_18", machine_test "xor_test_18" 4 test_xor_18_data (fun m -> m.regs.(rind Rax) = -1085102592571150096L));
  ("xor_19", machine_test "xor_test_19" 4 test_xor_19_data (fun m -> m.regs.(rind Rax) = 1085102592571150095L));
  ("xor_20", machine_test "xor_test_20" 4 test_xor_20_data (fun m -> m.regs.(rind Rax) = 1229782938247303441L));
  ("xor_21", machine_test "xor_test_21" 4 test_xor_21_data (fun m -> m.regs.(rind Rax) = -8608480567731124088L));
  ("xor_22", machine_test "xor_test_22" 4 test_xor_22_data (fun m -> m.regs.(rind Rax) = -9223372036854775807L));
  ("xor_23", machine_test "xor_test_23" 4 test_xor_23_data (fun m -> m.regs.(rind Rax) = -2L));
  ("xor_24", machine_test "xor_test_24" 4 test_xor_24_data (fun m -> m.regs.(rind Rax) = -2L));
  ("xor_25", machine_test "xor_test_25" 4 test_xor_25_data (fun m -> m.regs.(rind Rax) = 1L));
  ("xor_26", machine_test "xor_test_26" 4 test_xor_26_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_27", machine_test "xor_test_27" 4 test_xor_27_data (fun m -> m.regs.(rind Rax) = -9223372036854775807L));
  ("xor_28", machine_test "xor_test_28" 4 test_xor_28_data (fun m -> m.regs.(rind Rax) = 9223372036854775806L));
  ("xor_29", machine_test "xor_test_29" 4 test_xor_29_data (fun m -> m.regs.(rind Rax) = -2401053088876216594L));
  ("xor_30", machine_test "xor_test_30" 4 test_xor_30_data (fun m -> m.regs.(rind Rax) = -1085102592571150095L));
  ("xor_31", machine_test "xor_test_31" 4 test_xor_31_data (fun m -> m.regs.(rind Rax) = 1085102592571150094L));
  ("xor_32", machine_test "xor_test_32" 4 test_xor_32_data (fun m -> m.regs.(rind Rax) = 1229782938247303440L));
  ("xor_33", machine_test "xor_test_33" 4 test_xor_33_data (fun m -> m.regs.(rind Rax) = -8608480567731124087L));
  ("xor_34", machine_test "xor_test_34" 4 test_xor_34_data (fun m -> m.regs.(rind Rax) = -9223372036854775808L));
  ("xor_35", machine_test "xor_test_35" 4 test_xor_35_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_36", machine_test "xor_test_36" 4 test_xor_36_data (fun m -> m.regs.(rind Rax) = 9223372036854775807L));
  ("xor_37", machine_test "xor_test_37" 4 test_xor_37_data (fun m -> m.regs.(rind Rax) = -9223372036854775808L));
  ("xor_38", machine_test "xor_test_38" 4 test_xor_38_data (fun m -> m.regs.(rind Rax) = -9223372036854775807L));
  ("xor_39", machine_test "xor_test_39" 4 test_xor_39_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_40", machine_test "xor_test_40" 4 test_xor_40_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_41", machine_test "xor_test_41" 4 test_xor_41_data (fun m -> m.regs.(rind Rax) = 6822318947978559215L));
  ("xor_42", machine_test "xor_test_42" 4 test_xor_42_data (fun m -> m.regs.(rind Rax) = 8138269444283625712L));
  ("xor_43", machine_test "xor_test_43" 4 test_xor_43_data (fun m -> m.regs.(rind Rax) = -8138269444283625713L));
  ("xor_44", machine_test "xor_test_44" 4 test_xor_44_data (fun m -> m.regs.(rind Rax) = -7993589098607472367L));
  ("xor_45", machine_test "xor_test_45" 4 test_xor_45_data (fun m -> m.regs.(rind Rax) = 614891469123651720L));
  ("xor_46", machine_test "xor_test_46" 4 test_xor_46_data (fun m -> m.regs.(rind Rax) = 1L));
  ("xor_47", machine_test "xor_test_47" 4 test_xor_47_data (fun m -> m.regs.(rind Rax) = 9223372036854775806L));
  ("xor_48", machine_test "xor_test_48" 4 test_xor_48_data (fun m -> m.regs.(rind Rax) = -9223372036854775808L));
  ("xor_49", machine_test "xor_test_49" 4 test_xor_49_data (fun m -> m.regs.(rind Rax) = 9223372036854775807L));
  ("xor_50", machine_test "xor_test_50" 4 test_xor_50_data (fun m -> m.regs.(rind Rax) = 9223372036854775806L));
  ("xor_51", machine_test "xor_test_51" 4 test_xor_51_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_52", machine_test "xor_test_52" 4 test_xor_52_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_53", machine_test "xor_test_53" 4 test_xor_53_data (fun m -> m.regs.(rind Rax) = -6822318947978559216L));
  ("xor_54", machine_test "xor_test_54" 4 test_xor_54_data (fun m -> m.regs.(rind Rax) = -8138269444283625713L));
  ("xor_55", machine_test "xor_test_55" 4 test_xor_55_data (fun m -> m.regs.(rind Rax) = 8138269444283625712L));
  ("xor_56", machine_test "xor_test_56" 4 test_xor_56_data (fun m -> m.regs.(rind Rax) = 7993589098607472366L));
  ("xor_57", machine_test "xor_test_57" 4 test_xor_57_data (fun m -> m.regs.(rind Rax) = -614891469123651721L));
  ("xor_58", machine_test "xor_test_58" 4 test_xor_58_data (fun m -> m.regs.(rind Rax) = -2L));
  ("xor_59", machine_test "xor_test_59" 4 test_xor_59_data (fun m -> m.regs.(rind Rax) = -9223372036854775807L));
  ("xor_60", machine_test "xor_test_60" 4 test_xor_60_data (fun m -> m.regs.(rind Rax) = 2401053088876216592L));
  ("xor_61", machine_test "xor_test_61" 4 test_xor_61_data (fun m -> m.regs.(rind Rax) = -2401053088876216593L));
  ("xor_62", machine_test "xor_test_62" 4 test_xor_62_data (fun m -> m.regs.(rind Rax) = -2401053088876216594L));
  ("xor_63", machine_test "xor_test_63" 4 test_xor_63_data (fun m -> m.regs.(rind Rax) = 6822318947978559215L));
  ("xor_64", machine_test "xor_test_64" 4 test_xor_64_data (fun m -> m.regs.(rind Rax) = -6822318947978559216L));
  ("xor_65", machine_test "xor_test_65" 4 test_xor_65_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_66", machine_test "xor_test_66" 4 test_xor_66_data (fun m -> m.regs.(rind Rax) = 3340912394407595551L));
  ("xor_67", machine_test "xor_test_67" 4 test_xor_67_data (fun m -> m.regs.(rind Rax) = -3340912394407595552L));
  ("xor_68", machine_test "xor_test_68" 4 test_xor_68_data (fun m -> m.regs.(rind Rax) = -3477711303295062018L));
  ("xor_69", machine_test "xor_test_69" 4 test_xor_69_data (fun m -> m.regs.(rind Rax) = 6207427478854907495L));
  ("xor_70", machine_test "xor_test_70" 4 test_xor_70_data (fun m -> m.regs.(rind Rax) = 6822318947978559214L));
  ("xor_71", machine_test "xor_test_71" 4 test_xor_71_data (fun m -> m.regs.(rind Rax) = 2401053088876216593L));
  ("xor_72", machine_test "xor_test_72" 4 test_xor_72_data (fun m -> m.regs.(rind Rax) = 1085102592571150095L));
  ("xor_73", machine_test "xor_test_73" 4 test_xor_73_data (fun m -> m.regs.(rind Rax) = -1085102592571150096L));
  ("xor_74", machine_test "xor_test_74" 4 test_xor_74_data (fun m -> m.regs.(rind Rax) = -1085102592571150095L));
  ("xor_75", machine_test "xor_test_75" 4 test_xor_75_data (fun m -> m.regs.(rind Rax) = 8138269444283625712L));
  ("xor_76", machine_test "xor_test_76" 4 test_xor_76_data (fun m -> m.regs.(rind Rax) = -8138269444283625713L));
  ("xor_77", machine_test "xor_test_77" 4 test_xor_77_data (fun m -> m.regs.(rind Rax) = 3340912394407595551L));
  ("xor_78", machine_test "xor_test_78" 4 test_xor_78_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_79", machine_test "xor_test_79" 4 test_xor_79_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_80", machine_test "xor_test_80" 4 test_xor_80_data (fun m -> m.regs.(rind Rax) = -2170205185142300191L));
  ("xor_81", machine_test "xor_test_81" 4 test_xor_81_data (fun m -> m.regs.(rind Rax) = 8680820740569200760L));
  ("xor_82", machine_test "xor_test_82" 4 test_xor_82_data (fun m -> m.regs.(rind Rax) = 8138269444283625713L));
  ("xor_83", machine_test "xor_test_83" 4 test_xor_83_data (fun m -> m.regs.(rind Rax) = 1085102592571150094L));
  ("xor_84", machine_test "xor_test_84" 4 test_xor_84_data (fun m -> m.regs.(rind Rax) = -1085102592571150096L));
  ("xor_85", machine_test "xor_test_85" 4 test_xor_85_data (fun m -> m.regs.(rind Rax) = 1085102592571150095L));
  ("xor_86", machine_test "xor_test_86" 4 test_xor_86_data (fun m -> m.regs.(rind Rax) = 1085102592571150094L));
  ("xor_87", machine_test "xor_test_87" 4 test_xor_87_data (fun m -> m.regs.(rind Rax) = -8138269444283625713L));
  ("xor_88", machine_test "xor_test_88" 4 test_xor_88_data (fun m -> m.regs.(rind Rax) = 8138269444283625712L));
  ("xor_89", machine_test "xor_test_89" 4 test_xor_89_data (fun m -> m.regs.(rind Rax) = -3340912394407595552L));
  ("xor_90", machine_test "xor_test_90" 4 test_xor_90_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_91", machine_test "xor_test_91" 4 test_xor_91_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_92", machine_test "xor_test_92" 4 test_xor_92_data (fun m -> m.regs.(rind Rax) = 2170205185142300190L));
  ("xor_93", machine_test "xor_test_93" 4 test_xor_93_data (fun m -> m.regs.(rind Rax) = -8680820740569200761L));
  ("xor_94", machine_test "xor_test_94" 4 test_xor_94_data (fun m -> m.regs.(rind Rax) = -8138269444283625714L));
  ("xor_95", machine_test "xor_test_95" 4 test_xor_95_data (fun m -> m.regs.(rind Rax) = -1085102592571150095L));
  ("xor_96", machine_test "xor_test_96" 4 test_xor_96_data (fun m -> m.regs.(rind Rax) = -1229782938247303442L));
  ("xor_97", machine_test "xor_test_97" 4 test_xor_97_data (fun m -> m.regs.(rind Rax) = 1229782938247303441L));
  ("xor_98", machine_test "xor_test_98" 4 test_xor_98_data (fun m -> m.regs.(rind Rax) = 1229782938247303440L));
  ("xor_99", machine_test "xor_test_99" 4 test_xor_99_data (fun m -> m.regs.(rind Rax) = -7993589098607472367L));
  ("xor_100", machine_test "xor_test_100" 4 test_xor_100_data (fun m -> m.regs.(rind Rax) = 7993589098607472366L));
  ("xor_101", machine_test "xor_test_101" 4 test_xor_101_data (fun m -> m.regs.(rind Rax) = -3477711303295062018L));
  ("xor_102", machine_test "xor_test_102" 4 test_xor_102_data (fun m -> m.regs.(rind Rax) = -2170205185142300191L));
  ("xor_103", machine_test "xor_test_103" 4 test_xor_103_data (fun m -> m.regs.(rind Rax) = 2170205185142300190L));
  ("xor_104", machine_test "xor_test_104" 4 test_xor_104_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_105", machine_test "xor_test_105" 4 test_xor_105_data (fun m -> m.regs.(rind Rax) = -7378697629483820647L));
  ("xor_106", machine_test "xor_test_106" 4 test_xor_106_data (fun m -> m.regs.(rind Rax) = -7993589098607472368L));
  ("xor_107", machine_test "xor_test_107" 4 test_xor_107_data (fun m -> m.regs.(rind Rax) = -1229782938247303441L));
  ("xor_108", machine_test "xor_test_108" 4 test_xor_108_data (fun m -> m.regs.(rind Rax) = 8608480567731124087L));
  ("xor_109", machine_test "xor_test_109" 4 test_xor_109_data (fun m -> m.regs.(rind Rax) = -8608480567731124088L));
  ("xor_110", machine_test "xor_test_110" 4 test_xor_110_data (fun m -> m.regs.(rind Rax) = -8608480567731124087L));
  ("xor_111", machine_test "xor_test_111" 4 test_xor_111_data (fun m -> m.regs.(rind Rax) = 614891469123651720L));
  ("xor_112", machine_test "xor_test_112" 4 test_xor_112_data (fun m -> m.regs.(rind Rax) = -614891469123651721L));
  ("xor_113", machine_test "xor_test_113" 4 test_xor_113_data (fun m -> m.regs.(rind Rax) = 6207427478854907495L));
  ("xor_114", machine_test "xor_test_114" 4 test_xor_114_data (fun m -> m.regs.(rind Rax) = 8680820740569200760L));
  ("xor_115", machine_test "xor_test_115" 4 test_xor_115_data (fun m -> m.regs.(rind Rax) = -8680820740569200761L));
  ("xor_116", machine_test "xor_test_116" 4 test_xor_116_data (fun m -> m.regs.(rind Rax) = -7378697629483820647L));
  ("xor_117", machine_test "xor_test_117" 4 test_xor_117_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_118", machine_test "xor_test_118" 4 test_xor_118_data (fun m -> m.regs.(rind Rax) = 614891469123651721L));
  ("xor_119", machine_test "xor_test_119" 4 test_xor_119_data (fun m -> m.regs.(rind Rax) = 8608480567731124086L));
  ("xor_120", machine_test "xor_test_120" 4 test_xor_120_data (fun m -> m.regs.(rind Rax) = 9223372036854775806L));
  ("xor_121", machine_test "xor_test_121" 4 test_xor_121_data (fun m -> m.regs.(rind Rax) = -9223372036854775807L));
  ("xor_122", machine_test "xor_test_122" 4 test_xor_122_data (fun m -> m.regs.(rind Rax) = -9223372036854775808L));
  ("xor_123", machine_test "xor_test_123" 4 test_xor_123_data (fun m -> m.regs.(rind Rax) = 1L));
  ("xor_124", machine_test "xor_test_124" 4 test_xor_124_data (fun m -> m.regs.(rind Rax) = -2L));
  ("xor_125", machine_test "xor_test_125" 4 test_xor_125_data (fun m -> m.regs.(rind Rax) = 6822318947978559214L));
  ("xor_126", machine_test "xor_test_126" 4 test_xor_126_data (fun m -> m.regs.(rind Rax) = 8138269444283625713L));
  ("xor_127", machine_test "xor_test_127" 4 test_xor_127_data (fun m -> m.regs.(rind Rax) = -8138269444283625714L));
  ("xor_128", machine_test "xor_test_128" 4 test_xor_128_data (fun m -> m.regs.(rind Rax) = -7993589098607472368L));
  ("xor_129", machine_test "xor_test_129" 4 test_xor_129_data (fun m -> m.regs.(rind Rax) = 614891469123651721L));
  ("xor_130", machine_test "xor_test_130" 4 test_xor_130_data (fun m -> m.regs.(rind Rax) = 0L));
  ("xor_131", machine_test "xor_test_131" 4 test_xor_131_data (fun m -> m.regs.(rind Rax) = 9223372036854775807L));
  ("xor_132", machine_test "xor_test_132" 4 test_xor_132_data (fun m -> m.regs.(rind Rax) = 1L));
  ("xor_133", machine_test "xor_test_133" 4 test_xor_133_data (fun m -> m.regs.(rind Rax) = -2L));
  ("xor_134", machine_test "xor_test_134" 4 test_xor_134_data (fun m -> m.regs.(rind Rax) = -1L));
  ("xor_135", machine_test "xor_test_135" 4 test_xor_135_data (fun m -> m.regs.(rind Rax) = 9223372036854775806L));
  ("xor_136", machine_test "xor_test_136" 4 test_xor_136_data (fun m -> m.regs.(rind Rax) = -9223372036854775807L));
  ("xor_137", machine_test "xor_test_137" 4 test_xor_137_data (fun m -> m.regs.(rind Rax) = 2401053088876216593L));
  ("xor_138", machine_test "xor_test_138" 4 test_xor_138_data (fun m -> m.regs.(rind Rax) = 1085102592571150094L));
  ("xor_139", machine_test "xor_test_139" 4 test_xor_139_data (fun m -> m.regs.(rind Rax) = -1085102592571150095L));
  ("xor_140", machine_test "xor_test_140" 4 test_xor_140_data (fun m -> m.regs.(rind Rax) = -1229782938247303441L));
  ("xor_141", machine_test "xor_test_141" 4 test_xor_141_data (fun m -> m.regs.(rind Rax) = 8608480567731124086L));
  ("xor_142", machine_test "xor_test_142" 4 test_xor_142_data (fun m -> m.regs.(rind Rax) = 9223372036854775807L));
  ("xor_143", machine_test "xor_test_143" 4 test_xor_143_data (fun m -> m.regs.(rind Rax) = 0L));
]

let other_team_tests = GradedTest("xor_tests", 4, xor_tests)