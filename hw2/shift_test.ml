open Simulator
open Assert
open X86
open Asm
open Gradedtests

let test_shift_0_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_1_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_2_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_3_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_4_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_5_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_6_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_7_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_8_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_9_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_10_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_11_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_12_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_13_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_14_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_15_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_16_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_17_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_18_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_19_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_20_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_21_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_22_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_23_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_24_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_25_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_26_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_27_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_28_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_29_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_30_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_31_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_32_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_33_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_34_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_35_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_36_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_37_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_38_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_39_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_40_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_41_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_42_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_43_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_44_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_45_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_46_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_47_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_48_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_49_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_50_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_51_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_52_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_53_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_54_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_55_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_56_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_57_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_58_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_59_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_60_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_61_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_62_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_63_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_64_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_65_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_66_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_67_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_68_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_69_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_70_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_71_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_72_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_73_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_74_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_75_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_76_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_77_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_78_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_79_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_80_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_81_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_82_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_83_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_84_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_85_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_86_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_87_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_88_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_89_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_90_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_91_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_92_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_93_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_94_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_95_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_96_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_97_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_98_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_99_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_100_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_101_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_102_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_103_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_104_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_105_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_106_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_107_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_108_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_109_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_110_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_111_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_112_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_113_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_114_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_115_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_116_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_117_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_118_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_119_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_120_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_121_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_122_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_123_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_124_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_125_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_126_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_127_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_128_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_129_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_130_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_131_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_132_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_133_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_134_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_135_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_136_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_137_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_138_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_139_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_140_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_141_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_142_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_143_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775808L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_144_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_145_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_146_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_147_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_148_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_149_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_150_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_151_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_152_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_153_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_154_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_155_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_156_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_157_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_158_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_159_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_160_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_161_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_162_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_163_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_164_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_165_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_166_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_167_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_168_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_169_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_170_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_171_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_172_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_173_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_174_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_175_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_176_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_177_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_178_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_179_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_180_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_181_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_182_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_183_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_184_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_185_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_186_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_187_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_188_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_189_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_190_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_191_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_192_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_193_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_194_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_195_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_196_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_197_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_198_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_199_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_200_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_201_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_202_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_203_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_204_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_205_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_206_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_207_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_208_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_209_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_210_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_211_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_212_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_213_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_214_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_215_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2401053088876216593L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_216_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_217_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_218_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_219_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_220_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_221_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_222_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_223_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_224_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_225_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_226_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_227_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_228_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_229_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_230_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_231_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_232_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_233_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_234_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_235_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_236_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_237_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_238_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_239_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_240_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_241_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_242_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_243_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_244_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_245_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_246_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_247_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_248_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_249_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_250_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_251_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-1085102592571150096L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_252_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_253_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_254_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_255_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_256_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_257_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_258_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_259_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_260_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_261_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_262_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_263_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_264_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_265_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_266_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_267_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_268_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_269_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_270_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_271_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_272_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_273_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_274_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_275_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_276_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_277_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_278_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_279_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_280_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_281_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_282_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_283_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_284_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_285_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_286_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_287_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1085102592571150095L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_288_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_289_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_290_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_291_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_292_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_293_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_294_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_295_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_296_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_297_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_298_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_299_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_300_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_301_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_302_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_303_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_304_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_305_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_306_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_307_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_308_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_309_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_310_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_311_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_312_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_313_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_314_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_315_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_316_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_317_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_318_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_319_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_320_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_321_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_322_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_323_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (1229782938247303441L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_324_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_325_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_326_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_327_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_328_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_329_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_330_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_331_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_332_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_333_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_334_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_335_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_336_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_337_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_338_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_339_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_340_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_341_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_342_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_343_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_344_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_345_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_346_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_347_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_348_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_349_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_350_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_351_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_352_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_353_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_354_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_355_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_356_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_357_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_358_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_359_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-8608480567731124088L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_360_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_361_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_362_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_363_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_364_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_365_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_366_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_367_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_368_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_369_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_370_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_371_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_372_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_373_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_374_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_375_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_376_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_377_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_378_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_379_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_380_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_381_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_382_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_383_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_384_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_385_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_386_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_387_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_388_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_389_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_390_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_391_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_392_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_393_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_394_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_395_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-9223372036854775807L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_396_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_397_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_398_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (0L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_399_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_400_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_401_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (1L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_402_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_403_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_404_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_405_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_406_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_407_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (5L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_408_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_409_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_410_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (11L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_411_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_412_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_413_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (17L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_414_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_415_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_416_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (29L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_417_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_418_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_419_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (31L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_420_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_421_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_422_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (32L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_423_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_424_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_425_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (50L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_426_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_427_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_428_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (59L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_429_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Sarq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_430_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shrq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let test_shift_431_data = test_machine [
    InsB0 (Xorq, [Reg Rax; Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Xorq, [Imm (Lit (-2L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Movq, [Imm (Lit (-0x8000000000000000L)); Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Negq, [Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Shlq, [Imm (Lit (63L)); Reg Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
    InsB0 (Retq, []);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
  ]
let shift_tests = [
  ("shift_0", machine_test "-1 s>> 0 ==> -1 of=true sf=true zero=false" 6 test_shift_0_data (fun m -> 
Printf.printf "shift_0 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_1", machine_test "-1 l>> 0 ==> -1 of=true sf=true zero=false" 6 test_shift_1_data (fun m -> 
Printf.printf "shift_1 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_2", machine_test "-1 l<< 0 ==> -1 of=true sf=true zero=false" 6 test_shift_2_data (fun m -> 
Printf.printf "shift_2 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_3", machine_test "-1 s>> 1 ==> -1 of=false sf=true zero=false" 6 test_shift_3_data (fun m -> 
Printf.printf "shift_3 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_4", machine_test "-1 l>> 1 ==> 9223372036854775807 of=true sf=false zero=false" 6 test_shift_4_data (fun m -> 
Printf.printf "shift_4 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("shift_5", machine_test "-1 l<< 1 ==> -2 of=false sf=true zero=false" 6 test_shift_5_data (fun m -> 
Printf.printf "shift_5 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("shift_6", machine_test "-1 s>> 2 ==> -1 of=true sf=true zero=false" 6 test_shift_6_data (fun m -> 
Printf.printf "shift_6 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_7", machine_test "-1 l>> 2 ==> 4611686018427387903 of=true sf=false zero=false" 6 test_shift_7_data (fun m -> 
Printf.printf "shift_7 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4611686018427387903L));
  ("shift_8", machine_test "-1 l<< 2 ==> -4 of=true sf=true zero=false" 6 test_shift_8_data (fun m -> 
Printf.printf "shift_8 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4L));
  ("shift_9", machine_test "-1 s>> 5 ==> -1 of=true sf=true zero=false" 6 test_shift_9_data (fun m -> 
Printf.printf "shift_9 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_10", machine_test "-1 l>> 5 ==> 576460752303423487 of=true sf=false zero=false" 6 test_shift_10_data (fun m -> 
Printf.printf "shift_10 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 576460752303423487L));
  ("shift_11", machine_test "-1 l<< 5 ==> -32 of=true sf=true zero=false" 6 test_shift_11_data (fun m -> 
Printf.printf "shift_11 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -32L));
  ("shift_12", machine_test "-1 s>> 11 ==> -1 of=true sf=true zero=false" 6 test_shift_12_data (fun m -> 
Printf.printf "shift_12 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_13", machine_test "-1 l>> 11 ==> 9007199254740991 of=true sf=false zero=false" 6 test_shift_13_data (fun m -> 
Printf.printf "shift_13 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9007199254740991L));
  ("shift_14", machine_test "-1 l<< 11 ==> -2048 of=true sf=true zero=false" 6 test_shift_14_data (fun m -> 
Printf.printf "shift_14 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2048L));
  ("shift_15", machine_test "-1 s>> 17 ==> -1 of=true sf=true zero=false" 6 test_shift_15_data (fun m -> 
Printf.printf "shift_15 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_16", machine_test "-1 l>> 17 ==> 140737488355327 of=true sf=false zero=false" 6 test_shift_16_data (fun m -> 
Printf.printf "shift_16 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 140737488355327L));
  ("shift_17", machine_test "-1 l<< 17 ==> -131072 of=true sf=true zero=false" 6 test_shift_17_data (fun m -> 
Printf.printf "shift_17 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -131072L));
  ("shift_18", machine_test "-1 s>> 29 ==> -1 of=true sf=true zero=false" 6 test_shift_18_data (fun m -> 
Printf.printf "shift_18 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_19", machine_test "-1 l>> 29 ==> 34359738367 of=true sf=false zero=false" 6 test_shift_19_data (fun m -> 
Printf.printf "shift_19 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 34359738367L));
  ("shift_20", machine_test "-1 l<< 29 ==> -536870912 of=true sf=true zero=false" 6 test_shift_20_data (fun m -> 
Printf.printf "shift_20 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -536870912L));
  ("shift_21", machine_test "-1 s>> 31 ==> -1 of=true sf=true zero=false" 6 test_shift_21_data (fun m -> 
Printf.printf "shift_21 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_22", machine_test "-1 l>> 31 ==> 8589934591 of=true sf=false zero=false" 6 test_shift_22_data (fun m -> 
Printf.printf "shift_22 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8589934591L));
  ("shift_23", machine_test "-1 l<< 31 ==> -2147483648 of=true sf=true zero=false" 6 test_shift_23_data (fun m -> 
Printf.printf "shift_23 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2147483648L));
  ("shift_24", machine_test "-1 s>> 32 ==> -1 of=true sf=true zero=false" 6 test_shift_24_data (fun m -> 
Printf.printf "shift_24 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_25", machine_test "-1 l>> 32 ==> 4294967295 of=true sf=false zero=false" 6 test_shift_25_data (fun m -> 
Printf.printf "shift_25 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967295L));
  ("shift_26", machine_test "-1 l<< 32 ==> -4294967296 of=true sf=true zero=false" 6 test_shift_26_data (fun m -> 
Printf.printf "shift_26 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4294967296L));
  ("shift_27", machine_test "-1 s>> 50 ==> -1 of=true sf=true zero=false" 6 test_shift_27_data (fun m -> 
Printf.printf "shift_27 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_28", machine_test "-1 l>> 50 ==> 16383 of=true sf=false zero=false" 6 test_shift_28_data (fun m -> 
Printf.printf "shift_28 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 16383L));
  ("shift_29", machine_test "-1 l<< 50 ==> -1125899906842624 of=true sf=true zero=false" 6 test_shift_29_data (fun m -> 
Printf.printf "shift_29 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1125899906842624L));
  ("shift_30", machine_test "-1 s>> 59 ==> -1 of=true sf=true zero=false" 6 test_shift_30_data (fun m -> 
Printf.printf "shift_30 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_31", machine_test "-1 l>> 59 ==> 31 of=true sf=false zero=false" 6 test_shift_31_data (fun m -> 
Printf.printf "shift_31 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 31L));
  ("shift_32", machine_test "-1 l<< 59 ==> -576460752303423488 of=true sf=true zero=false" 6 test_shift_32_data (fun m -> 
Printf.printf "shift_32 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -576460752303423488L));
  ("shift_33", machine_test "-1 s>> 63 ==> -1 of=true sf=true zero=false" 6 test_shift_33_data (fun m -> 
Printf.printf "shift_33 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_34", machine_test "-1 l>> 63 ==> 1 of=true sf=false zero=false" 6 test_shift_34_data (fun m -> 
Printf.printf "shift_34 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_35", machine_test "-1 l<< 63 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_35_data (fun m -> 
Printf.printf "shift_35 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_36", machine_test "0 s>> 0 ==> 0 of=true sf=true zero=false" 6 test_shift_36_data (fun m -> 
Printf.printf "shift_36 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 0L));
  ("shift_37", machine_test "0 l>> 0 ==> 0 of=true sf=true zero=false" 6 test_shift_37_data (fun m -> 
Printf.printf "shift_37 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 0L));
  ("shift_38", machine_test "0 l<< 0 ==> 0 of=true sf=true zero=false" 6 test_shift_38_data (fun m -> 
Printf.printf "shift_38 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 0L));
  ("shift_39", machine_test "0 s>> 1 ==> 0 of=false sf=false zero=true" 6 test_shift_39_data (fun m -> 
Printf.printf "shift_39 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_40", machine_test "0 l>> 1 ==> 0 of=false sf=false zero=true" 6 test_shift_40_data (fun m -> 
Printf.printf "shift_40 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_41", machine_test "0 l<< 1 ==> 0 of=false sf=false zero=true" 6 test_shift_41_data (fun m -> 
Printf.printf "shift_41 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_42", machine_test "0 s>> 2 ==> 0 of=true sf=false zero=true" 6 test_shift_42_data (fun m -> 
Printf.printf "shift_42 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_43", machine_test "0 l>> 2 ==> 0 of=true sf=false zero=true" 6 test_shift_43_data (fun m -> 
Printf.printf "shift_43 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_44", machine_test "0 l<< 2 ==> 0 of=true sf=false zero=true" 6 test_shift_44_data (fun m -> 
Printf.printf "shift_44 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_45", machine_test "0 s>> 5 ==> 0 of=true sf=false zero=true" 6 test_shift_45_data (fun m -> 
Printf.printf "shift_45 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_46", machine_test "0 l>> 5 ==> 0 of=true sf=false zero=true" 6 test_shift_46_data (fun m -> 
Printf.printf "shift_46 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_47", machine_test "0 l<< 5 ==> 0 of=true sf=false zero=true" 6 test_shift_47_data (fun m -> 
Printf.printf "shift_47 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_48", machine_test "0 s>> 11 ==> 0 of=true sf=false zero=true" 6 test_shift_48_data (fun m -> 
Printf.printf "shift_48 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_49", machine_test "0 l>> 11 ==> 0 of=true sf=false zero=true" 6 test_shift_49_data (fun m -> 
Printf.printf "shift_49 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_50", machine_test "0 l<< 11 ==> 0 of=true sf=false zero=true" 6 test_shift_50_data (fun m -> 
Printf.printf "shift_50 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_51", machine_test "0 s>> 17 ==> 0 of=true sf=false zero=true" 6 test_shift_51_data (fun m -> 
Printf.printf "shift_51 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_52", machine_test "0 l>> 17 ==> 0 of=true sf=false zero=true" 6 test_shift_52_data (fun m -> 
Printf.printf "shift_52 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_53", machine_test "0 l<< 17 ==> 0 of=true sf=false zero=true" 6 test_shift_53_data (fun m -> 
Printf.printf "shift_53 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_54", machine_test "0 s>> 29 ==> 0 of=true sf=false zero=true" 6 test_shift_54_data (fun m -> 
Printf.printf "shift_54 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_55", machine_test "0 l>> 29 ==> 0 of=true sf=false zero=true" 6 test_shift_55_data (fun m -> 
Printf.printf "shift_55 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_56", machine_test "0 l<< 29 ==> 0 of=true sf=false zero=true" 6 test_shift_56_data (fun m -> 
Printf.printf "shift_56 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_57", machine_test "0 s>> 31 ==> 0 of=true sf=false zero=true" 6 test_shift_57_data (fun m -> 
Printf.printf "shift_57 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_58", machine_test "0 l>> 31 ==> 0 of=true sf=false zero=true" 6 test_shift_58_data (fun m -> 
Printf.printf "shift_58 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_59", machine_test "0 l<< 31 ==> 0 of=true sf=false zero=true" 6 test_shift_59_data (fun m -> 
Printf.printf "shift_59 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_60", machine_test "0 s>> 32 ==> 0 of=true sf=false zero=true" 6 test_shift_60_data (fun m -> 
Printf.printf "shift_60 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_61", machine_test "0 l>> 32 ==> 0 of=true sf=false zero=true" 6 test_shift_61_data (fun m -> 
Printf.printf "shift_61 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_62", machine_test "0 l<< 32 ==> 0 of=true sf=false zero=true" 6 test_shift_62_data (fun m -> 
Printf.printf "shift_62 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_63", machine_test "0 s>> 50 ==> 0 of=true sf=false zero=true" 6 test_shift_63_data (fun m -> 
Printf.printf "shift_63 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_64", machine_test "0 l>> 50 ==> 0 of=true sf=false zero=true" 6 test_shift_64_data (fun m -> 
Printf.printf "shift_64 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_65", machine_test "0 l<< 50 ==> 0 of=true sf=false zero=true" 6 test_shift_65_data (fun m -> 
Printf.printf "shift_65 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_66", machine_test "0 s>> 59 ==> 0 of=true sf=false zero=true" 6 test_shift_66_data (fun m -> 
Printf.printf "shift_66 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_67", machine_test "0 l>> 59 ==> 0 of=true sf=false zero=true" 6 test_shift_67_data (fun m -> 
Printf.printf "shift_67 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_68", machine_test "0 l<< 59 ==> 0 of=true sf=false zero=true" 6 test_shift_68_data (fun m -> 
Printf.printf "shift_68 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_69", machine_test "0 s>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_69_data (fun m -> 
Printf.printf "shift_69 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_70", machine_test "0 l>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_70_data (fun m -> 
Printf.printf "shift_70 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_71", machine_test "0 l<< 63 ==> 0 of=true sf=false zero=true" 6 test_shift_71_data (fun m -> 
Printf.printf "shift_71 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_72", machine_test "1 s>> 0 ==> 1 of=true sf=true zero=false" 6 test_shift_72_data (fun m -> 
Printf.printf "shift_72 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_73", machine_test "1 l>> 0 ==> 1 of=true sf=true zero=false" 6 test_shift_73_data (fun m -> 
Printf.printf "shift_73 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_74", machine_test "1 l<< 0 ==> 1 of=true sf=true zero=false" 6 test_shift_74_data (fun m -> 
Printf.printf "shift_74 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_75", machine_test "1 s>> 1 ==> 0 of=false sf=false zero=true" 6 test_shift_75_data (fun m -> 
Printf.printf "shift_75 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_76", machine_test "1 l>> 1 ==> 0 of=false sf=false zero=true" 6 test_shift_76_data (fun m -> 
Printf.printf "shift_76 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_77", machine_test "1 l<< 1 ==> 2 of=false sf=false zero=false" 6 test_shift_77_data (fun m -> 
Printf.printf "shift_77 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("shift_78", machine_test "1 s>> 2 ==> 0 of=true sf=false zero=true" 6 test_shift_78_data (fun m -> 
Printf.printf "shift_78 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_79", machine_test "1 l>> 2 ==> 0 of=true sf=false zero=true" 6 test_shift_79_data (fun m -> 
Printf.printf "shift_79 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_80", machine_test "1 l<< 2 ==> 4 of=true sf=false zero=false" 6 test_shift_80_data (fun m -> 
Printf.printf "shift_80 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4L));
  ("shift_81", machine_test "1 s>> 5 ==> 0 of=true sf=false zero=true" 6 test_shift_81_data (fun m -> 
Printf.printf "shift_81 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_82", machine_test "1 l>> 5 ==> 0 of=true sf=false zero=true" 6 test_shift_82_data (fun m -> 
Printf.printf "shift_82 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_83", machine_test "1 l<< 5 ==> 32 of=true sf=false zero=false" 6 test_shift_83_data (fun m -> 
Printf.printf "shift_83 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 32L));
  ("shift_84", machine_test "1 s>> 11 ==> 0 of=true sf=false zero=true" 6 test_shift_84_data (fun m -> 
Printf.printf "shift_84 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_85", machine_test "1 l>> 11 ==> 0 of=true sf=false zero=true" 6 test_shift_85_data (fun m -> 
Printf.printf "shift_85 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_86", machine_test "1 l<< 11 ==> 2048 of=true sf=false zero=false" 6 test_shift_86_data (fun m -> 
Printf.printf "shift_86 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2048L));
  ("shift_87", machine_test "1 s>> 17 ==> 0 of=true sf=false zero=true" 6 test_shift_87_data (fun m -> 
Printf.printf "shift_87 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_88", machine_test "1 l>> 17 ==> 0 of=true sf=false zero=true" 6 test_shift_88_data (fun m -> 
Printf.printf "shift_88 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_89", machine_test "1 l<< 17 ==> 131072 of=true sf=false zero=false" 6 test_shift_89_data (fun m -> 
Printf.printf "shift_89 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 131072L));
  ("shift_90", machine_test "1 s>> 29 ==> 0 of=true sf=false zero=true" 6 test_shift_90_data (fun m -> 
Printf.printf "shift_90 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_91", machine_test "1 l>> 29 ==> 0 of=true sf=false zero=true" 6 test_shift_91_data (fun m -> 
Printf.printf "shift_91 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_92", machine_test "1 l<< 29 ==> 536870912 of=true sf=false zero=false" 6 test_shift_92_data (fun m -> 
Printf.printf "shift_92 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 536870912L));
  ("shift_93", machine_test "1 s>> 31 ==> 0 of=true sf=false zero=true" 6 test_shift_93_data (fun m -> 
Printf.printf "shift_93 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_94", machine_test "1 l>> 31 ==> 0 of=true sf=false zero=true" 6 test_shift_94_data (fun m -> 
Printf.printf "shift_94 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_95", machine_test "1 l<< 31 ==> 2147483648 of=true sf=false zero=false" 6 test_shift_95_data (fun m -> 
Printf.printf "shift_95 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2147483648L));
  ("shift_96", machine_test "1 s>> 32 ==> 0 of=true sf=false zero=true" 6 test_shift_96_data (fun m -> 
Printf.printf "shift_96 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_97", machine_test "1 l>> 32 ==> 0 of=true sf=false zero=true" 6 test_shift_97_data (fun m -> 
Printf.printf "shift_97 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_98", machine_test "1 l<< 32 ==> 4294967296 of=true sf=false zero=false" 6 test_shift_98_data (fun m -> 
Printf.printf "shift_98 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967296L));
  ("shift_99", machine_test "1 s>> 50 ==> 0 of=true sf=false zero=true" 6 test_shift_99_data (fun m -> 
Printf.printf "shift_99 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_100", machine_test "1 l>> 50 ==> 0 of=true sf=false zero=true" 6 test_shift_100_data (fun m -> 
Printf.printf "shift_100 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_101", machine_test "1 l<< 50 ==> 1125899906842624 of=true sf=false zero=false" 6 test_shift_101_data (fun m -> 
Printf.printf "shift_101 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1125899906842624L));
  ("shift_102", machine_test "1 s>> 59 ==> 0 of=true sf=false zero=true" 6 test_shift_102_data (fun m -> 
Printf.printf "shift_102 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_103", machine_test "1 l>> 59 ==> 0 of=true sf=false zero=true" 6 test_shift_103_data (fun m -> 
Printf.printf "shift_103 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_104", machine_test "1 l<< 59 ==> 576460752303423488 of=true sf=false zero=false" 6 test_shift_104_data (fun m -> 
Printf.printf "shift_104 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 576460752303423488L));
  ("shift_105", machine_test "1 s>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_105_data (fun m -> 
Printf.printf "shift_105 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_106", machine_test "1 l>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_106_data (fun m -> 
Printf.printf "shift_106 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_107", machine_test "1 l<< 63 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_107_data (fun m -> 
Printf.printf "shift_107 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_108", machine_test "-9223372036854775808 s>> 0 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_108_data (fun m -> 
Printf.printf "shift_108 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_109", machine_test "-9223372036854775808 l>> 0 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_109_data (fun m -> 
Printf.printf "shift_109 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_110", machine_test "-9223372036854775808 l<< 0 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_110_data (fun m -> 
Printf.printf "shift_110 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_111", machine_test "-9223372036854775808 s>> 1 ==> -4611686018427387904 of=false sf=true zero=false" 6 test_shift_111_data (fun m -> 
Printf.printf "shift_111 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4611686018427387904L));
  ("shift_112", machine_test "-9223372036854775808 l>> 1 ==> 4611686018427387904 of=true sf=false zero=false" 6 test_shift_112_data (fun m -> 
Printf.printf "shift_112 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4611686018427387904L));
  ("shift_113", machine_test "-9223372036854775808 l<< 1 ==> 0 of=true sf=false zero=true" 6 test_shift_113_data (fun m -> 
Printf.printf "shift_113 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_114", machine_test "-9223372036854775808 s>> 2 ==> -2305843009213693952 of=true sf=true zero=false" 6 test_shift_114_data (fun m -> 
Printf.printf "shift_114 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2305843009213693952L));
  ("shift_115", machine_test "-9223372036854775808 l>> 2 ==> 2305843009213693952 of=true sf=false zero=false" 6 test_shift_115_data (fun m -> 
Printf.printf "shift_115 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2305843009213693952L));
  ("shift_116", machine_test "-9223372036854775808 l<< 2 ==> 0 of=true sf=false zero=true" 6 test_shift_116_data (fun m -> 
Printf.printf "shift_116 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_117", machine_test "-9223372036854775808 s>> 5 ==> -288230376151711744 of=true sf=true zero=false" 6 test_shift_117_data (fun m -> 
Printf.printf "shift_117 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -288230376151711744L));
  ("shift_118", machine_test "-9223372036854775808 l>> 5 ==> 288230376151711744 of=true sf=false zero=false" 6 test_shift_118_data (fun m -> 
Printf.printf "shift_118 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 288230376151711744L));
  ("shift_119", machine_test "-9223372036854775808 l<< 5 ==> 0 of=true sf=false zero=true" 6 test_shift_119_data (fun m -> 
Printf.printf "shift_119 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_120", machine_test "-9223372036854775808 s>> 11 ==> -4503599627370496 of=true sf=true zero=false" 6 test_shift_120_data (fun m -> 
Printf.printf "shift_120 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4503599627370496L));
  ("shift_121", machine_test "-9223372036854775808 l>> 11 ==> 4503599627370496 of=true sf=false zero=false" 6 test_shift_121_data (fun m -> 
Printf.printf "shift_121 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4503599627370496L));
  ("shift_122", machine_test "-9223372036854775808 l<< 11 ==> 0 of=true sf=false zero=true" 6 test_shift_122_data (fun m -> 
Printf.printf "shift_122 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_123", machine_test "-9223372036854775808 s>> 17 ==> -70368744177664 of=true sf=true zero=false" 6 test_shift_123_data (fun m -> 
Printf.printf "shift_123 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -70368744177664L));
  ("shift_124", machine_test "-9223372036854775808 l>> 17 ==> 70368744177664 of=true sf=false zero=false" 6 test_shift_124_data (fun m -> 
Printf.printf "shift_124 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 70368744177664L));
  ("shift_125", machine_test "-9223372036854775808 l<< 17 ==> 0 of=true sf=false zero=true" 6 test_shift_125_data (fun m -> 
Printf.printf "shift_125 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_126", machine_test "-9223372036854775808 s>> 29 ==> -17179869184 of=true sf=true zero=false" 6 test_shift_126_data (fun m -> 
Printf.printf "shift_126 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -17179869184L));
  ("shift_127", machine_test "-9223372036854775808 l>> 29 ==> 17179869184 of=true sf=false zero=false" 6 test_shift_127_data (fun m -> 
Printf.printf "shift_127 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 17179869184L));
  ("shift_128", machine_test "-9223372036854775808 l<< 29 ==> 0 of=true sf=false zero=true" 6 test_shift_128_data (fun m -> 
Printf.printf "shift_128 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_129", machine_test "-9223372036854775808 s>> 31 ==> -4294967296 of=true sf=true zero=false" 6 test_shift_129_data (fun m -> 
Printf.printf "shift_129 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4294967296L));
  ("shift_130", machine_test "-9223372036854775808 l>> 31 ==> 4294967296 of=true sf=false zero=false" 6 test_shift_130_data (fun m -> 
Printf.printf "shift_130 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967296L));
  ("shift_131", machine_test "-9223372036854775808 l<< 31 ==> 0 of=true sf=false zero=true" 6 test_shift_131_data (fun m -> 
Printf.printf "shift_131 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_132", machine_test "-9223372036854775808 s>> 32 ==> -2147483648 of=true sf=true zero=false" 6 test_shift_132_data (fun m -> 
Printf.printf "shift_132 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2147483648L));
  ("shift_133", machine_test "-9223372036854775808 l>> 32 ==> 2147483648 of=true sf=false zero=false" 6 test_shift_133_data (fun m -> 
Printf.printf "shift_133 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2147483648L));
  ("shift_134", machine_test "-9223372036854775808 l<< 32 ==> 0 of=true sf=false zero=true" 6 test_shift_134_data (fun m -> 
Printf.printf "shift_134 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_135", machine_test "-9223372036854775808 s>> 50 ==> -8192 of=true sf=true zero=false" 6 test_shift_135_data (fun m -> 
Printf.printf "shift_135 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8192L));
  ("shift_136", machine_test "-9223372036854775808 l>> 50 ==> 8192 of=true sf=false zero=false" 6 test_shift_136_data (fun m -> 
Printf.printf "shift_136 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8192L));
  ("shift_137", machine_test "-9223372036854775808 l<< 50 ==> 0 of=true sf=false zero=true" 6 test_shift_137_data (fun m -> 
Printf.printf "shift_137 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_138", machine_test "-9223372036854775808 s>> 59 ==> -16 of=true sf=true zero=false" 6 test_shift_138_data (fun m -> 
Printf.printf "shift_138 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -16L));
  ("shift_139", machine_test "-9223372036854775808 l>> 59 ==> 16 of=true sf=false zero=false" 6 test_shift_139_data (fun m -> 
Printf.printf "shift_139 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 16L));
  ("shift_140", machine_test "-9223372036854775808 l<< 59 ==> 0 of=true sf=false zero=true" 6 test_shift_140_data (fun m -> 
Printf.printf "shift_140 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_141", machine_test "-9223372036854775808 s>> 63 ==> -1 of=true sf=true zero=false" 6 test_shift_141_data (fun m -> 
Printf.printf "shift_141 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_142", machine_test "-9223372036854775808 l>> 63 ==> 1 of=true sf=false zero=false" 6 test_shift_142_data (fun m -> 
Printf.printf "shift_142 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_143", machine_test "-9223372036854775808 l<< 63 ==> 0 of=true sf=false zero=true" 6 test_shift_143_data (fun m -> 
Printf.printf "shift_143 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_144", machine_test "9223372036854775807 s>> 0 ==> 9223372036854775807 of=true sf=true zero=false" 6 test_shift_144_data (fun m -> 
Printf.printf "shift_144 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("shift_145", machine_test "9223372036854775807 l>> 0 ==> 9223372036854775807 of=true sf=true zero=false" 6 test_shift_145_data (fun m -> 
Printf.printf "shift_145 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("shift_146", machine_test "9223372036854775807 l<< 0 ==> 9223372036854775807 of=true sf=true zero=false" 6 test_shift_146_data (fun m -> 
Printf.printf "shift_146 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("shift_147", machine_test "9223372036854775807 s>> 1 ==> 4611686018427387903 of=false sf=false zero=false" 6 test_shift_147_data (fun m -> 
Printf.printf "shift_147 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4611686018427387903L));
  ("shift_148", machine_test "9223372036854775807 l>> 1 ==> 4611686018427387903 of=false sf=false zero=false" 6 test_shift_148_data (fun m -> 
Printf.printf "shift_148 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4611686018427387903L));
  ("shift_149", machine_test "9223372036854775807 l<< 1 ==> -2 of=true sf=true zero=false" 6 test_shift_149_data (fun m -> 
Printf.printf "shift_149 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("shift_150", machine_test "9223372036854775807 s>> 2 ==> 2305843009213693951 of=true sf=false zero=false" 6 test_shift_150_data (fun m -> 
Printf.printf "shift_150 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2305843009213693951L));
  ("shift_151", machine_test "9223372036854775807 l>> 2 ==> 2305843009213693951 of=true sf=false zero=false" 6 test_shift_151_data (fun m -> 
Printf.printf "shift_151 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2305843009213693951L));
  ("shift_152", machine_test "9223372036854775807 l<< 2 ==> -4 of=true sf=true zero=false" 6 test_shift_152_data (fun m -> 
Printf.printf "shift_152 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4L));
  ("shift_153", machine_test "9223372036854775807 s>> 5 ==> 288230376151711743 of=true sf=false zero=false" 6 test_shift_153_data (fun m -> 
Printf.printf "shift_153 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 288230376151711743L));
  ("shift_154", machine_test "9223372036854775807 l>> 5 ==> 288230376151711743 of=true sf=false zero=false" 6 test_shift_154_data (fun m -> 
Printf.printf "shift_154 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 288230376151711743L));
  ("shift_155", machine_test "9223372036854775807 l<< 5 ==> -32 of=true sf=true zero=false" 6 test_shift_155_data (fun m -> 
Printf.printf "shift_155 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -32L));
  ("shift_156", machine_test "9223372036854775807 s>> 11 ==> 4503599627370495 of=true sf=false zero=false" 6 test_shift_156_data (fun m -> 
Printf.printf "shift_156 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4503599627370495L));
  ("shift_157", machine_test "9223372036854775807 l>> 11 ==> 4503599627370495 of=true sf=false zero=false" 6 test_shift_157_data (fun m -> 
Printf.printf "shift_157 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4503599627370495L));
  ("shift_158", machine_test "9223372036854775807 l<< 11 ==> -2048 of=true sf=true zero=false" 6 test_shift_158_data (fun m -> 
Printf.printf "shift_158 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2048L));
  ("shift_159", machine_test "9223372036854775807 s>> 17 ==> 70368744177663 of=true sf=false zero=false" 6 test_shift_159_data (fun m -> 
Printf.printf "shift_159 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 70368744177663L));
  ("shift_160", machine_test "9223372036854775807 l>> 17 ==> 70368744177663 of=true sf=false zero=false" 6 test_shift_160_data (fun m -> 
Printf.printf "shift_160 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 70368744177663L));
  ("shift_161", machine_test "9223372036854775807 l<< 17 ==> -131072 of=true sf=true zero=false" 6 test_shift_161_data (fun m -> 
Printf.printf "shift_161 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -131072L));
  ("shift_162", machine_test "9223372036854775807 s>> 29 ==> 17179869183 of=true sf=false zero=false" 6 test_shift_162_data (fun m -> 
Printf.printf "shift_162 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 17179869183L));
  ("shift_163", machine_test "9223372036854775807 l>> 29 ==> 17179869183 of=true sf=false zero=false" 6 test_shift_163_data (fun m -> 
Printf.printf "shift_163 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 17179869183L));
  ("shift_164", machine_test "9223372036854775807 l<< 29 ==> -536870912 of=true sf=true zero=false" 6 test_shift_164_data (fun m -> 
Printf.printf "shift_164 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -536870912L));
  ("shift_165", machine_test "9223372036854775807 s>> 31 ==> 4294967295 of=true sf=false zero=false" 6 test_shift_165_data (fun m -> 
Printf.printf "shift_165 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967295L));
  ("shift_166", machine_test "9223372036854775807 l>> 31 ==> 4294967295 of=true sf=false zero=false" 6 test_shift_166_data (fun m -> 
Printf.printf "shift_166 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967295L));
  ("shift_167", machine_test "9223372036854775807 l<< 31 ==> -2147483648 of=true sf=true zero=false" 6 test_shift_167_data (fun m -> 
Printf.printf "shift_167 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2147483648L));
  ("shift_168", machine_test "9223372036854775807 s>> 32 ==> 2147483647 of=true sf=false zero=false" 6 test_shift_168_data (fun m -> 
Printf.printf "shift_168 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2147483647L));
  ("shift_169", machine_test "9223372036854775807 l>> 32 ==> 2147483647 of=true sf=false zero=false" 6 test_shift_169_data (fun m -> 
Printf.printf "shift_169 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2147483647L));
  ("shift_170", machine_test "9223372036854775807 l<< 32 ==> -4294967296 of=true sf=true zero=false" 6 test_shift_170_data (fun m -> 
Printf.printf "shift_170 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4294967296L));
  ("shift_171", machine_test "9223372036854775807 s>> 50 ==> 8191 of=true sf=false zero=false" 6 test_shift_171_data (fun m -> 
Printf.printf "shift_171 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8191L));
  ("shift_172", machine_test "9223372036854775807 l>> 50 ==> 8191 of=true sf=false zero=false" 6 test_shift_172_data (fun m -> 
Printf.printf "shift_172 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8191L));
  ("shift_173", machine_test "9223372036854775807 l<< 50 ==> -1125899906842624 of=true sf=true zero=false" 6 test_shift_173_data (fun m -> 
Printf.printf "shift_173 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1125899906842624L));
  ("shift_174", machine_test "9223372036854775807 s>> 59 ==> 15 of=true sf=false zero=false" 6 test_shift_174_data (fun m -> 
Printf.printf "shift_174 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 15L));
  ("shift_175", machine_test "9223372036854775807 l>> 59 ==> 15 of=true sf=false zero=false" 6 test_shift_175_data (fun m -> 
Printf.printf "shift_175 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 15L));
  ("shift_176", machine_test "9223372036854775807 l<< 59 ==> -576460752303423488 of=true sf=true zero=false" 6 test_shift_176_data (fun m -> 
Printf.printf "shift_176 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -576460752303423488L));
  ("shift_177", machine_test "9223372036854775807 s>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_177_data (fun m -> 
Printf.printf "shift_177 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_178", machine_test "9223372036854775807 l>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_178_data (fun m -> 
Printf.printf "shift_178 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_179", machine_test "9223372036854775807 l<< 63 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_179_data (fun m -> 
Printf.printf "shift_179 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_180", machine_test "-2401053088876216593 s>> 0 ==> -2401053088876216593 of=true sf=true zero=false" 6 test_shift_180_data (fun m -> 
Printf.printf "shift_180 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216593L));
  ("shift_181", machine_test "-2401053088876216593 l>> 0 ==> -2401053088876216593 of=true sf=true zero=false" 6 test_shift_181_data (fun m -> 
Printf.printf "shift_181 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216593L));
  ("shift_182", machine_test "-2401053088876216593 l<< 0 ==> -2401053088876216593 of=true sf=true zero=false" 6 test_shift_182_data (fun m -> 
Printf.printf "shift_182 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053088876216593L));
  ("shift_183", machine_test "-2401053088876216593 s>> 1 ==> -1200526544438108297 of=false sf=true zero=false" 6 test_shift_183_data (fun m -> 
Printf.printf "shift_183 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1200526544438108297L));
  ("shift_184", machine_test "-2401053088876216593 l>> 1 ==> 8022845492416667511 of=true sf=false zero=false" 6 test_shift_184_data (fun m -> 
Printf.printf "shift_184 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8022845492416667511L));
  ("shift_185", machine_test "-2401053088876216593 l<< 1 ==> -4802106177752433186 of=false sf=true zero=false" 6 test_shift_185_data (fun m -> 
Printf.printf "shift_185 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4802106177752433186L));
  ("shift_186", machine_test "-2401053088876216593 s>> 2 ==> -600263272219054149 of=true sf=true zero=false" 6 test_shift_186_data (fun m -> 
Printf.printf "shift_186 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -600263272219054149L));
  ("shift_187", machine_test "-2401053088876216593 l>> 2 ==> 4011422746208333755 of=true sf=false zero=false" 6 test_shift_187_data (fun m -> 
Printf.printf "shift_187 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4011422746208333755L));
  ("shift_188", machine_test "-2401053088876216593 l<< 2 ==> 8842531718204685244 of=true sf=false zero=false" 6 test_shift_188_data (fun m -> 
Printf.printf "shift_188 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8842531718204685244L));
  ("shift_189", machine_test "-2401053088876216593 s>> 5 ==> -75032909027381769 of=true sf=true zero=false" 6 test_shift_189_data (fun m -> 
Printf.printf "shift_189 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -75032909027381769L));
  ("shift_190", machine_test "-2401053088876216593 l>> 5 ==> 501427843276041719 of=true sf=false zero=false" 6 test_shift_190_data (fun m -> 
Printf.printf "shift_190 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 501427843276041719L));
  ("shift_191", machine_test "-2401053088876216593 l<< 5 ==> -3046722549200724512 of=true sf=true zero=false" 6 test_shift_191_data (fun m -> 
Printf.printf "shift_191 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -3046722549200724512L));
  ("shift_192", machine_test "-2401053088876216593 s>> 11 ==> -1172389203552841 of=true sf=true zero=false" 6 test_shift_192_data (fun m -> 
Printf.printf "shift_192 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1172389203552841L));
  ("shift_193", machine_test "-2401053088876216593 l>> 11 ==> 7834810051188151 of=true sf=false zero=false" 6 test_shift_193_data (fun m -> 
Printf.printf "shift_193 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7834810051188151L));
  ("shift_194", machine_test "-2401053088876216593 l<< 11 ==> 7923941661958699008 of=true sf=false zero=false" 6 test_shift_194_data (fun m -> 
Printf.printf "shift_194 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7923941661958699008L));
  ("shift_195", machine_test "-2401053088876216593 s>> 17 ==> -18318581305514 of=true sf=true zero=false" 6 test_shift_195_data (fun m -> 
Printf.printf "shift_195 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -18318581305514L));
  ("shift_196", machine_test "-2401053088876216593 l>> 17 ==> 122418907049814 of=true sf=false zero=false" 6 test_shift_196_data (fun m -> 
Printf.printf "shift_196 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 122418907049814L));
  ("shift_197", machine_test "-2401053088876216593 l<< 17 ==> 9070176375198842880 of=true sf=false zero=false" 6 test_shift_197_data (fun m -> 
Printf.printf "shift_197 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9070176375198842880L));
  ("shift_198", machine_test "-2401053088876216593 s>> 29 ==> -4472309890 of=true sf=true zero=false" 6 test_shift_198_data (fun m -> 
Printf.printf "shift_198 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4472309890L));
  ("shift_199", machine_test "-2401053088876216593 l>> 29 ==> 29887428478 of=true sf=false zero=false" 6 test_shift_199_data (fun m -> 
Printf.printf "shift_199 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 29887428478L));
  ("shift_200", machine_test "-2401053088876216593 l<< 29 ==> -300131636576518144 of=true sf=true zero=false" 6 test_shift_200_data (fun m -> 
Printf.printf "shift_200 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -300131636576518144L));
  ("shift_201", machine_test "-2401053088876216593 s>> 31 ==> -1118077473 of=true sf=true zero=false" 6 test_shift_201_data (fun m -> 
Printf.printf "shift_201 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1118077473L));
  ("shift_202", machine_test "-2401053088876216593 l>> 31 ==> 7471857119 of=true sf=false zero=false" 6 test_shift_202_data (fun m -> 
Printf.printf "shift_202 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 7471857119L));
  ("shift_203", machine_test "-2401053088876216593 l<< 31 ==> -1200526546306072576 of=true sf=true zero=false" 6 test_shift_203_data (fun m -> 
Printf.printf "shift_203 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1200526546306072576L));
  ("shift_204", machine_test "-2401053088876216593 s>> 32 ==> -559038737 of=true sf=true zero=false" 6 test_shift_204_data (fun m -> 
Printf.printf "shift_204 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -559038737L));
  ("shift_205", machine_test "-2401053088876216593 l>> 32 ==> 3735928559 of=true sf=false zero=false" 6 test_shift_205_data (fun m -> 
Printf.printf "shift_205 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 3735928559L));
  ("shift_206", machine_test "-2401053088876216593 l<< 32 ==> -2401053092612145152 of=true sf=true zero=false" 6 test_shift_206_data (fun m -> 
Printf.printf "shift_206 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2401053092612145152L));
  ("shift_207", machine_test "-2401053088876216593 s>> 50 ==> -2133 of=true sf=true zero=false" 6 test_shift_207_data (fun m -> 
Printf.printf "shift_207 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2133L));
  ("shift_208", machine_test "-2401053088876216593 l>> 50 ==> 14251 of=true sf=false zero=false" 6 test_shift_208_data (fun m -> 
Printf.printf "shift_208 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 14251L));
  ("shift_209", machine_test "-2401053088876216593 l<< 50 ==> -307370674568036352 of=true sf=true zero=false" 6 test_shift_209_data (fun m -> 
Printf.printf "shift_209 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -307370674568036352L));
  ("shift_210", machine_test "-2401053088876216593 s>> 59 ==> -5 of=true sf=true zero=false" 6 test_shift_210_data (fun m -> 
Printf.printf "shift_210 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -5L));
  ("shift_211", machine_test "-2401053088876216593 l>> 59 ==> 27 of=true sf=false zero=false" 6 test_shift_211_data (fun m -> 
Printf.printf "shift_211 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 27L));
  ("shift_212", machine_test "-2401053088876216593 l<< 59 ==> 8646911284551352320 of=true sf=false zero=false" 6 test_shift_212_data (fun m -> 
Printf.printf "shift_212 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8646911284551352320L));
  ("shift_213", machine_test "-2401053088876216593 s>> 63 ==> -1 of=true sf=true zero=false" 6 test_shift_213_data (fun m -> 
Printf.printf "shift_213 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_214", machine_test "-2401053088876216593 l>> 63 ==> 1 of=true sf=false zero=false" 6 test_shift_214_data (fun m -> 
Printf.printf "shift_214 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_215", machine_test "-2401053088876216593 l<< 63 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_215_data (fun m -> 
Printf.printf "shift_215 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_216", machine_test "-1085102592571150096 s>> 0 ==> -1085102592571150096 of=true sf=true zero=false" 6 test_shift_216_data (fun m -> 
Printf.printf "shift_216 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150096L));
  ("shift_217", machine_test "-1085102592571150096 l>> 0 ==> -1085102592571150096 of=true sf=true zero=false" 6 test_shift_217_data (fun m -> 
Printf.printf "shift_217 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150096L));
  ("shift_218", machine_test "-1085102592571150096 l<< 0 ==> -1085102592571150096 of=true sf=true zero=false" 6 test_shift_218_data (fun m -> 
Printf.printf "shift_218 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102592571150096L));
  ("shift_219", machine_test "-1085102592571150096 s>> 1 ==> -542551296285575048 of=false sf=true zero=false" 6 test_shift_219_data (fun m -> 
Printf.printf "shift_219 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -542551296285575048L));
  ("shift_220", machine_test "-1085102592571150096 l>> 1 ==> 8680820740569200760 of=true sf=false zero=false" 6 test_shift_220_data (fun m -> 
Printf.printf "shift_220 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8680820740569200760L));
  ("shift_221", machine_test "-1085102592571150096 l<< 1 ==> -2170205185142300192 of=false sf=true zero=false" 6 test_shift_221_data (fun m -> 
Printf.printf "shift_221 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2170205185142300192L));
  ("shift_222", machine_test "-1085102592571150096 s>> 2 ==> -271275648142787524 of=true sf=true zero=false" 6 test_shift_222_data (fun m -> 
Printf.printf "shift_222 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -271275648142787524L));
  ("shift_223", machine_test "-1085102592571150096 l>> 2 ==> 4340410370284600380 of=true sf=false zero=false" 6 test_shift_223_data (fun m -> 
Printf.printf "shift_223 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4340410370284600380L));
  ("shift_224", machine_test "-1085102592571150096 l<< 2 ==> -4340410370284600384 of=true sf=true zero=false" 6 test_shift_224_data (fun m -> 
Printf.printf "shift_224 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4340410370284600384L));
  ("shift_225", machine_test "-1085102592571150096 s>> 5 ==> -33909456017848441 of=true sf=true zero=false" 6 test_shift_225_data (fun m -> 
Printf.printf "shift_225 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -33909456017848441L));
  ("shift_226", machine_test "-1085102592571150096 l>> 5 ==> 542551296285575047 of=true sf=false zero=false" 6 test_shift_226_data (fun m -> 
Printf.printf "shift_226 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 542551296285575047L));
  ("shift_227", machine_test "-1085102592571150096 l<< 5 ==> 2170205185142300160 of=true sf=false zero=false" 6 test_shift_227_data (fun m -> 
Printf.printf "shift_227 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2170205185142300160L));
  ("shift_228", machine_test "-1085102592571150096 s>> 11 ==> -529835250278882 of=true sf=true zero=false" 6 test_shift_228_data (fun m -> 
Printf.printf "shift_228 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -529835250278882L));
  ("shift_229", machine_test "-1085102592571150096 l>> 11 ==> 8477364004462110 of=true sf=false zero=false" 6 test_shift_229_data (fun m -> 
Printf.printf "shift_229 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8477364004462110L));
  ("shift_230", machine_test "-1085102592571150096 l<< 11 ==> -8680820740569202688 of=true sf=true zero=false" 6 test_shift_230_data (fun m -> 
Printf.printf "shift_230 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8680820740569202688L));
  ("shift_231", machine_test "-1085102592571150096 s>> 17 ==> -8278675785608 of=true sf=true zero=false" 6 test_shift_231_data (fun m -> 
Printf.printf "shift_231 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8278675785608L));
  ("shift_232", machine_test "-1085102592571150096 l>> 17 ==> 132458812569720 of=true sf=false zero=false" 6 test_shift_232_data (fun m -> 
Printf.printf "shift_232 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 132458812569720L));
  ("shift_233", machine_test "-1085102592571150096 l<< 17 ==> -2170205185142423552 of=true sf=true zero=false" 6 test_shift_233_data (fun m -> 
Printf.printf "shift_233 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2170205185142423552L));
  ("shift_234", machine_test "-1085102592571150096 s>> 29 ==> -2021161081 of=true sf=true zero=false" 6 test_shift_234_data (fun m -> 
Printf.printf "shift_234 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2021161081L));
  ("shift_235", machine_test "-1085102592571150096 l>> 29 ==> 32338577287 of=true sf=false zero=false" 6 test_shift_235_data (fun m -> 
Printf.printf "shift_235 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 32338577287L));
  ("shift_236", machine_test "-1085102592571150096 l<< 29 ==> 2170205184637009920 of=true sf=false zero=false" 6 test_shift_236_data (fun m -> 
Printf.printf "shift_236 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2170205184637009920L));
  ("shift_237", machine_test "-1085102592571150096 s>> 31 ==> -505290271 of=true sf=true zero=false" 6 test_shift_237_data (fun m -> 
Printf.printf "shift_237 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -505290271L));
  ("shift_238", machine_test "-1085102592571150096 l>> 31 ==> 8084644321 of=true sf=false zero=false" 6 test_shift_238_data (fun m -> 
Printf.printf "shift_238 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8084644321L));
  ("shift_239", machine_test "-1085102592571150096 l<< 31 ==> 8680820738548039680 of=true sf=false zero=false" 6 test_shift_239_data (fun m -> 
Printf.printf "shift_239 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8680820738548039680L));
  ("shift_240", machine_test "-1085102592571150096 s>> 32 ==> -252645136 of=true sf=true zero=false" 6 test_shift_240_data (fun m -> 
Printf.printf "shift_240 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -252645136L));
  ("shift_241", machine_test "-1085102592571150096 l>> 32 ==> 4042322160 of=true sf=false zero=false" 6 test_shift_241_data (fun m -> 
Printf.printf "shift_241 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4042322160L));
  ("shift_242", machine_test "-1085102592571150096 l<< 32 ==> -1085102596613472256 of=true sf=true zero=false" 6 test_shift_242_data (fun m -> 
Printf.printf "shift_242 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1085102596613472256L));
  ("shift_243", machine_test "-1085102592571150096 s>> 50 ==> -964 of=true sf=true zero=false" 6 test_shift_243_data (fun m -> 
Printf.printf "shift_243 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -964L));
  ("shift_244", machine_test "-1085102592571150096 l>> 50 ==> 15420 of=true sf=false zero=false" 6 test_shift_244_data (fun m -> 
Printf.printf "shift_244 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 15420L));
  ("shift_245", machine_test "-1085102592571150096 l<< 50 ==> -4341470040785158144 of=true sf=true zero=false" 6 test_shift_245_data (fun m -> 
Printf.printf "shift_245 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4341470040785158144L));
  ("shift_246", machine_test "-1085102592571150096 s>> 59 ==> -2 of=true sf=true zero=false" 6 test_shift_246_data (fun m -> 
Printf.printf "shift_246 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("shift_247", machine_test "-1085102592571150096 l>> 59 ==> 30 of=true sf=false zero=false" 6 test_shift_247_data (fun m -> 
Printf.printf "shift_247 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 30L));
  ("shift_248", machine_test "-1085102592571150096 l<< 59 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_248_data (fun m -> 
Printf.printf "shift_248 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_249", machine_test "-1085102592571150096 s>> 63 ==> -1 of=true sf=true zero=false" 6 test_shift_249_data (fun m -> 
Printf.printf "shift_249 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_250", machine_test "-1085102592571150096 l>> 63 ==> 1 of=true sf=false zero=false" 6 test_shift_250_data (fun m -> 
Printf.printf "shift_250 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_251", machine_test "-1085102592571150096 l<< 63 ==> 0 of=true sf=false zero=true" 6 test_shift_251_data (fun m -> 
Printf.printf "shift_251 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_252", machine_test "1085102592571150095 s>> 0 ==> 1085102592571150095 of=true sf=true zero=false" 6 test_shift_252_data (fun m -> 
Printf.printf "shift_252 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150095L));
  ("shift_253", machine_test "1085102592571150095 l>> 0 ==> 1085102592571150095 of=true sf=true zero=false" 6 test_shift_253_data (fun m -> 
Printf.printf "shift_253 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150095L));
  ("shift_254", machine_test "1085102592571150095 l<< 0 ==> 1085102592571150095 of=true sf=true zero=false" 6 test_shift_254_data (fun m -> 
Printf.printf "shift_254 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1085102592571150095L));
  ("shift_255", machine_test "1085102592571150095 s>> 1 ==> 542551296285575047 of=false sf=false zero=false" 6 test_shift_255_data (fun m -> 
Printf.printf "shift_255 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 542551296285575047L));
  ("shift_256", machine_test "1085102592571150095 l>> 1 ==> 542551296285575047 of=false sf=false zero=false" 6 test_shift_256_data (fun m -> 
Printf.printf "shift_256 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 542551296285575047L));
  ("shift_257", machine_test "1085102592571150095 l<< 1 ==> 2170205185142300190 of=false sf=false zero=false" 6 test_shift_257_data (fun m -> 
Printf.printf "shift_257 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2170205185142300190L));
  ("shift_258", machine_test "1085102592571150095 s>> 2 ==> 271275648142787523 of=true sf=false zero=false" 6 test_shift_258_data (fun m -> 
Printf.printf "shift_258 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 271275648142787523L));
  ("shift_259", machine_test "1085102592571150095 l>> 2 ==> 271275648142787523 of=true sf=false zero=false" 6 test_shift_259_data (fun m -> 
Printf.printf "shift_259 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 271275648142787523L));
  ("shift_260", machine_test "1085102592571150095 l<< 2 ==> 4340410370284600380 of=true sf=false zero=false" 6 test_shift_260_data (fun m -> 
Printf.printf "shift_260 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4340410370284600380L));
  ("shift_261", machine_test "1085102592571150095 s>> 5 ==> 33909456017848440 of=true sf=false zero=false" 6 test_shift_261_data (fun m -> 
Printf.printf "shift_261 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 33909456017848440L));
  ("shift_262", machine_test "1085102592571150095 l>> 5 ==> 33909456017848440 of=true sf=false zero=false" 6 test_shift_262_data (fun m -> 
Printf.printf "shift_262 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 33909456017848440L));
  ("shift_263", machine_test "1085102592571150095 l<< 5 ==> -2170205185142300192 of=true sf=true zero=false" 6 test_shift_263_data (fun m -> 
Printf.printf "shift_263 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2170205185142300192L));
  ("shift_264", machine_test "1085102592571150095 s>> 11 ==> 529835250278881 of=true sf=false zero=false" 6 test_shift_264_data (fun m -> 
Printf.printf "shift_264 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 529835250278881L));
  ("shift_265", machine_test "1085102592571150095 l>> 11 ==> 529835250278881 of=true sf=false zero=false" 6 test_shift_265_data (fun m -> 
Printf.printf "shift_265 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 529835250278881L));
  ("shift_266", machine_test "1085102592571150095 l<< 11 ==> 8680820740569200640 of=true sf=false zero=false" 6 test_shift_266_data (fun m -> 
Printf.printf "shift_266 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8680820740569200640L));
  ("shift_267", machine_test "1085102592571150095 s>> 17 ==> 8278675785607 of=true sf=false zero=false" 6 test_shift_267_data (fun m -> 
Printf.printf "shift_267 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8278675785607L));
  ("shift_268", machine_test "1085102592571150095 l>> 17 ==> 8278675785607 of=true sf=false zero=false" 6 test_shift_268_data (fun m -> 
Printf.printf "shift_268 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8278675785607L));
  ("shift_269", machine_test "1085102592571150095 l<< 17 ==> 2170205185142292480 of=true sf=false zero=false" 6 test_shift_269_data (fun m -> 
Printf.printf "shift_269 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2170205185142292480L));
  ("shift_270", machine_test "1085102592571150095 s>> 29 ==> 2021161080 of=true sf=false zero=false" 6 test_shift_270_data (fun m -> 
Printf.printf "shift_270 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2021161080L));
  ("shift_271", machine_test "1085102592571150095 l>> 29 ==> 2021161080 of=true sf=false zero=false" 6 test_shift_271_data (fun m -> 
Printf.printf "shift_271 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2021161080L));
  ("shift_272", machine_test "1085102592571150095 l<< 29 ==> -2170205185173880832 of=true sf=true zero=false" 6 test_shift_272_data (fun m -> 
Printf.printf "shift_272 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2170205185173880832L));
  ("shift_273", machine_test "1085102592571150095 s>> 31 ==> 505290270 of=true sf=false zero=false" 6 test_shift_273_data (fun m -> 
Printf.printf "shift_273 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 505290270L));
  ("shift_274", machine_test "1085102592571150095 l>> 31 ==> 505290270 of=true sf=false zero=false" 6 test_shift_274_data (fun m -> 
Printf.printf "shift_274 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 505290270L));
  ("shift_275", machine_test "1085102592571150095 l<< 31 ==> -8680820740695523328 of=true sf=true zero=false" 6 test_shift_275_data (fun m -> 
Printf.printf "shift_275 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8680820740695523328L));
  ("shift_276", machine_test "1085102592571150095 s>> 32 ==> 252645135 of=true sf=false zero=false" 6 test_shift_276_data (fun m -> 
Printf.printf "shift_276 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 252645135L));
  ("shift_277", machine_test "1085102592571150095 l>> 32 ==> 252645135 of=true sf=false zero=false" 6 test_shift_277_data (fun m -> 
Printf.printf "shift_277 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 252645135L));
  ("shift_278", machine_test "1085102592571150095 l<< 32 ==> 1085102592318504960 of=true sf=false zero=false" 6 test_shift_278_data (fun m -> 
Printf.printf "shift_278 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1085102592318504960L));
  ("shift_279", machine_test "1085102592571150095 s>> 50 ==> 963 of=true sf=false zero=false" 6 test_shift_279_data (fun m -> 
Printf.printf "shift_279 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 963L));
  ("shift_280", machine_test "1085102592571150095 l>> 50 ==> 963 of=true sf=false zero=false" 6 test_shift_280_data (fun m -> 
Printf.printf "shift_280 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 963L));
  ("shift_281", machine_test "1085102592571150095 l<< 50 ==> 4340344140878315520 of=true sf=false zero=false" 6 test_shift_281_data (fun m -> 
Printf.printf "shift_281 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4340344140878315520L));
  ("shift_282", machine_test "1085102592571150095 s>> 59 ==> 1 of=true sf=false zero=false" 6 test_shift_282_data (fun m -> 
Printf.printf "shift_282 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_283", machine_test "1085102592571150095 l>> 59 ==> 1 of=true sf=false zero=false" 6 test_shift_283_data (fun m -> 
Printf.printf "shift_283 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_284", machine_test "1085102592571150095 l<< 59 ==> 8646911284551352320 of=true sf=false zero=false" 6 test_shift_284_data (fun m -> 
Printf.printf "shift_284 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8646911284551352320L));
  ("shift_285", machine_test "1085102592571150095 s>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_285_data (fun m -> 
Printf.printf "shift_285 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_286", machine_test "1085102592571150095 l>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_286_data (fun m -> 
Printf.printf "shift_286 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_287", machine_test "1085102592571150095 l<< 63 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_287_data (fun m -> 
Printf.printf "shift_287 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_288", machine_test "1229782938247303441 s>> 0 ==> 1229782938247303441 of=true sf=true zero=false" 6 test_shift_288_data (fun m -> 
Printf.printf "shift_288 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303441L));
  ("shift_289", machine_test "1229782938247303441 l>> 0 ==> 1229782938247303441 of=true sf=true zero=false" 6 test_shift_289_data (fun m -> 
Printf.printf "shift_289 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303441L));
  ("shift_290", machine_test "1229782938247303441 l<< 0 ==> 1229782938247303441 of=true sf=true zero=false" 6 test_shift_290_data (fun m -> 
Printf.printf "shift_290 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303441L));
  ("shift_291", machine_test "1229782938247303441 s>> 1 ==> 614891469123651720 of=false sf=false zero=false" 6 test_shift_291_data (fun m -> 
Printf.printf "shift_291 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651720L));
  ("shift_292", machine_test "1229782938247303441 l>> 1 ==> 614891469123651720 of=false sf=false zero=false" 6 test_shift_292_data (fun m -> 
Printf.printf "shift_292 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 614891469123651720L));
  ("shift_293", machine_test "1229782938247303441 l<< 1 ==> 2459565876494606882 of=false sf=false zero=false" 6 test_shift_293_data (fun m -> 
Printf.printf "shift_293 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2459565876494606882L));
  ("shift_294", machine_test "1229782938247303441 s>> 2 ==> 307445734561825860 of=true sf=false zero=false" 6 test_shift_294_data (fun m -> 
Printf.printf "shift_294 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 307445734561825860L));
  ("shift_295", machine_test "1229782938247303441 l>> 2 ==> 307445734561825860 of=true sf=false zero=false" 6 test_shift_295_data (fun m -> 
Printf.printf "shift_295 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 307445734561825860L));
  ("shift_296", machine_test "1229782938247303441 l<< 2 ==> 4919131752989213764 of=true sf=false zero=false" 6 test_shift_296_data (fun m -> 
Printf.printf "shift_296 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4919131752989213764L));
  ("shift_297", machine_test "1229782938247303441 s>> 5 ==> 38430716820228232 of=true sf=false zero=false" 6 test_shift_297_data (fun m -> 
Printf.printf "shift_297 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 38430716820228232L));
  ("shift_298", machine_test "1229782938247303441 l>> 5 ==> 38430716820228232 of=true sf=false zero=false" 6 test_shift_298_data (fun m -> 
Printf.printf "shift_298 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 38430716820228232L));
  ("shift_299", machine_test "1229782938247303441 l<< 5 ==> 2459565876494606880 of=true sf=false zero=false" 6 test_shift_299_data (fun m -> 
Printf.printf "shift_299 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2459565876494606880L));
  ("shift_300", machine_test "1229782938247303441 s>> 11 ==> 600479950316066 of=true sf=false zero=false" 6 test_shift_300_data (fun m -> 
Printf.printf "shift_300 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 600479950316066L));
  ("shift_301", machine_test "1229782938247303441 l>> 11 ==> 600479950316066 of=true sf=false zero=false" 6 test_shift_301_data (fun m -> 
Printf.printf "shift_301 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 600479950316066L));
  ("shift_302", machine_test "1229782938247303441 l<< 11 ==> -8608480567731124224 of=true sf=true zero=false" 6 test_shift_302_data (fun m -> 
Printf.printf "shift_302 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124224L));
  ("shift_303", machine_test "1229782938247303441 s>> 17 ==> 9382499223688 of=true sf=false zero=false" 6 test_shift_303_data (fun m -> 
Printf.printf "shift_303 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9382499223688L));
  ("shift_304", machine_test "1229782938247303441 l>> 17 ==> 9382499223688 of=true sf=false zero=false" 6 test_shift_304_data (fun m -> 
Printf.printf "shift_304 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9382499223688L));
  ("shift_305", machine_test "1229782938247303441 l<< 17 ==> 2459565876494598144 of=true sf=false zero=false" 6 test_shift_305_data (fun m -> 
Printf.printf "shift_305 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2459565876494598144L));
  ("shift_306", machine_test "1229782938247303441 s>> 29 ==> 2290649224 of=true sf=false zero=false" 6 test_shift_306_data (fun m -> 
Printf.printf "shift_306 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2290649224L));
  ("shift_307", machine_test "1229782938247303441 l>> 29 ==> 2290649224 of=true sf=false zero=false" 6 test_shift_307_data (fun m -> 
Printf.printf "shift_307 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2290649224L));
  ("shift_308", machine_test "1229782938247303441 l<< 29 ==> 2459565876458815488 of=true sf=false zero=false" 6 test_shift_308_data (fun m -> 
Printf.printf "shift_308 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2459565876458815488L));
  ("shift_309", machine_test "1229782938247303441 s>> 31 ==> 572662306 of=true sf=false zero=false" 6 test_shift_309_data (fun m -> 
Printf.printf "shift_309 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 572662306L));
  ("shift_310", machine_test "1229782938247303441 l>> 31 ==> 572662306 of=true sf=false zero=false" 6 test_shift_310_data (fun m -> 
Printf.printf "shift_310 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 572662306L));
  ("shift_311", machine_test "1229782938247303441 l<< 31 ==> -8608480567874289664 of=true sf=true zero=false" 6 test_shift_311_data (fun m -> 
Printf.printf "shift_311 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567874289664L));
  ("shift_312", machine_test "1229782938247303441 s>> 32 ==> 286331153 of=true sf=false zero=false" 6 test_shift_312_data (fun m -> 
Printf.printf "shift_312 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 286331153L));
  ("shift_313", machine_test "1229782938247303441 l>> 32 ==> 286331153 of=true sf=false zero=false" 6 test_shift_313_data (fun m -> 
Printf.printf "shift_313 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 286331153L));
  ("shift_314", machine_test "1229782938247303441 l<< 32 ==> 1229782937960972288 of=true sf=false zero=false" 6 test_shift_314_data (fun m -> 
Printf.printf "shift_314 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782937960972288L));
  ("shift_315", machine_test "1229782938247303441 s>> 50 ==> 1092 of=true sf=false zero=false" 6 test_shift_315_data (fun m -> 
Printf.printf "shift_315 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1092L));
  ("shift_316", machine_test "1229782938247303441 l>> 50 ==> 1092 of=true sf=false zero=false" 6 test_shift_316_data (fun m -> 
Printf.printf "shift_316 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1092L));
  ("shift_317", machine_test "1229782938247303441 l<< 50 ==> 4919056692995424256 of=true sf=false zero=false" 6 test_shift_317_data (fun m -> 
Printf.printf "shift_317 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4919056692995424256L));
  ("shift_318", machine_test "1229782938247303441 s>> 59 ==> 2 of=true sf=false zero=false" 6 test_shift_318_data (fun m -> 
Printf.printf "shift_318 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("shift_319", machine_test "1229782938247303441 l>> 59 ==> 2 of=true sf=false zero=false" 6 test_shift_319_data (fun m -> 
Printf.printf "shift_319 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("shift_320", machine_test "1229782938247303441 l<< 59 ==> -8646911284551352320 of=true sf=true zero=false" 6 test_shift_320_data (fun m -> 
Printf.printf "shift_320 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8646911284551352320L));
  ("shift_321", machine_test "1229782938247303441 s>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_321_data (fun m -> 
Printf.printf "shift_321 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_322", machine_test "1229782938247303441 l>> 63 ==> 0 of=true sf=false zero=true" 6 test_shift_322_data (fun m -> 
Printf.printf "shift_322 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_323", machine_test "1229782938247303441 l<< 63 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_323_data (fun m -> 
Printf.printf "shift_323 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_324", machine_test "-8608480567731124088 s>> 0 ==> -8608480567731124088 of=true sf=true zero=false" 6 test_shift_324_data (fun m -> 
Printf.printf "shift_324 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124088L));
  ("shift_325", machine_test "-8608480567731124088 l>> 0 ==> -8608480567731124088 of=true sf=true zero=false" 6 test_shift_325_data (fun m -> 
Printf.printf "shift_325 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124088L));
  ("shift_326", machine_test "-8608480567731124088 l<< 0 ==> -8608480567731124088 of=true sf=true zero=false" 6 test_shift_326_data (fun m -> 
Printf.printf "shift_326 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480567731124088L));
  ("shift_327", machine_test "-8608480567731124088 s>> 1 ==> -4304240283865562044 of=false sf=true zero=false" 6 test_shift_327_data (fun m -> 
Printf.printf "shift_327 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4304240283865562044L));
  ("shift_328", machine_test "-8608480567731124088 l>> 1 ==> 4919131752989213764 of=true sf=false zero=false" 6 test_shift_328_data (fun m -> 
Printf.printf "shift_328 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4919131752989213764L));
  ("shift_329", machine_test "-8608480567731124088 l<< 1 ==> 1229782938247303440 of=true sf=false zero=false" 6 test_shift_329_data (fun m -> 
Printf.printf "shift_329 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303440L));
  ("shift_330", machine_test "-8608480567731124088 s>> 2 ==> -2152120141932781022 of=true sf=true zero=false" 6 test_shift_330_data (fun m -> 
Printf.printf "shift_330 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2152120141932781022L));
  ("shift_331", machine_test "-8608480567731124088 l>> 2 ==> 2459565876494606882 of=true sf=false zero=false" 6 test_shift_331_data (fun m -> 
Printf.printf "shift_331 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2459565876494606882L));
  ("shift_332", machine_test "-8608480567731124088 l<< 2 ==> 2459565876494606880 of=true sf=false zero=false" 6 test_shift_332_data (fun m -> 
Printf.printf "shift_332 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2459565876494606880L));
  ("shift_333", machine_test "-8608480567731124088 s>> 5 ==> -269015017741597628 of=true sf=true zero=false" 6 test_shift_333_data (fun m -> 
Printf.printf "shift_333 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -269015017741597628L));
  ("shift_334", machine_test "-8608480567731124088 l>> 5 ==> 307445734561825860 of=true sf=false zero=false" 6 test_shift_334_data (fun m -> 
Printf.printf "shift_334 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 307445734561825860L));
  ("shift_335", machine_test "-8608480567731124088 l<< 5 ==> 1229782938247303424 of=true sf=false zero=false" 6 test_shift_335_data (fun m -> 
Printf.printf "shift_335 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247303424L));
  ("shift_336", machine_test "-8608480567731124088 s>> 11 ==> -4203359652212463 of=true sf=true zero=false" 6 test_shift_336_data (fun m -> 
Printf.printf "shift_336 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4203359652212463L));
  ("shift_337", machine_test "-8608480567731124088 l>> 11 ==> 4803839602528529 of=true sf=false zero=false" 6 test_shift_337_data (fun m -> 
Printf.printf "shift_337 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4803839602528529L));
  ("shift_338", machine_test "-8608480567731124088 l<< 11 ==> 4919131752989212672 of=true sf=false zero=false" 6 test_shift_338_data (fun m -> 
Printf.printf "shift_338 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4919131752989212672L));
  ("shift_339", machine_test "-8608480567731124088 s>> 17 ==> -65677494565820 of=true sf=true zero=false" 6 test_shift_339_data (fun m -> 
Printf.printf "shift_339 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -65677494565820L));
  ("shift_340", machine_test "-8608480567731124088 l>> 17 ==> 75059993789508 of=true sf=false zero=false" 6 test_shift_340_data (fun m -> 
Printf.printf "shift_340 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 75059993789508L));
  ("shift_341", machine_test "-8608480567731124088 l<< 17 ==> 1229782938247233536 of=true sf=false zero=false" 6 test_shift_341_data (fun m -> 
Printf.printf "shift_341 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782938247233536L));
  ("shift_342", machine_test "-8608480567731124088 s>> 29 ==> -16034544572 of=true sf=true zero=false" 6 test_shift_342_data (fun m -> 
Printf.printf "shift_342 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -16034544572L));
  ("shift_343", machine_test "-8608480567731124088 l>> 29 ==> 18325193796 of=true sf=false zero=false" 6 test_shift_343_data (fun m -> 
Printf.printf "shift_343 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 18325193796L));
  ("shift_344", machine_test "-8608480567731124088 l<< 29 ==> 1229782937960972288 of=true sf=false zero=false" 6 test_shift_344_data (fun m -> 
Printf.printf "shift_344 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1229782937960972288L));
  ("shift_345", machine_test "-8608480567731124088 s>> 31 ==> -4008636143 of=true sf=true zero=false" 6 test_shift_345_data (fun m -> 
Printf.printf "shift_345 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4008636143L));
  ("shift_346", machine_test "-8608480567731124088 l>> 31 ==> 4581298449 of=true sf=false zero=false" 6 test_shift_346_data (fun m -> 
Printf.printf "shift_346 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4581298449L));
  ("shift_347", machine_test "-8608480567731124088 l<< 31 ==> 4919131751843889152 of=true sf=false zero=false" 6 test_shift_347_data (fun m -> 
Printf.printf "shift_347 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4919131751843889152L));
  ("shift_348", machine_test "-8608480567731124088 s>> 32 ==> -2004318072 of=true sf=true zero=false" 6 test_shift_348_data (fun m -> 
Printf.printf "shift_348 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2004318072L));
  ("shift_349", machine_test "-8608480567731124088 l>> 32 ==> 2290649224 of=true sf=false zero=false" 6 test_shift_349_data (fun m -> 
Printf.printf "shift_349 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2290649224L));
  ("shift_350", machine_test "-8608480567731124088 l<< 32 ==> -8608480570021773312 of=true sf=true zero=false" 6 test_shift_350_data (fun m -> 
Printf.printf "shift_350 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8608480570021773312L));
  ("shift_351", machine_test "-8608480567731124088 s>> 50 ==> -7646 of=true sf=true zero=false" 6 test_shift_351_data (fun m -> 
Printf.printf "shift_351 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -7646L));
  ("shift_352", machine_test "-8608480567731124088 l>> 50 ==> 8738 of=true sf=false zero=false" 6 test_shift_352_data (fun m -> 
Printf.printf "shift_352 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8738L));
  ("shift_353", machine_test "-8608480567731124088 l<< 50 ==> 2458965396544290816 of=true sf=false zero=false" 6 test_shift_353_data (fun m -> 
Printf.printf "shift_353 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2458965396544290816L));
  ("shift_354", machine_test "-8608480567731124088 s>> 59 ==> -15 of=true sf=true zero=false" 6 test_shift_354_data (fun m -> 
Printf.printf "shift_354 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -15L));
  ("shift_355", machine_test "-8608480567731124088 l>> 59 ==> 17 of=true sf=false zero=false" 6 test_shift_355_data (fun m -> 
Printf.printf "shift_355 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 17L));
  ("shift_356", machine_test "-8608480567731124088 l<< 59 ==> 4611686018427387904 of=true sf=false zero=false" 6 test_shift_356_data (fun m -> 
Printf.printf "shift_356 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4611686018427387904L));
  ("shift_357", machine_test "-8608480567731124088 s>> 63 ==> -1 of=true sf=true zero=false" 6 test_shift_357_data (fun m -> 
Printf.printf "shift_357 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_358", machine_test "-8608480567731124088 l>> 63 ==> 1 of=true sf=false zero=false" 6 test_shift_358_data (fun m -> 
Printf.printf "shift_358 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_359", machine_test "-8608480567731124088 l<< 63 ==> 0 of=true sf=false zero=true" 6 test_shift_359_data (fun m -> 
Printf.printf "shift_359 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
  ("shift_360", machine_test "-9223372036854775807 s>> 0 ==> -9223372036854775807 of=true sf=true zero=false" 6 test_shift_360_data (fun m -> 
Printf.printf "shift_360 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("shift_361", machine_test "-9223372036854775807 l>> 0 ==> -9223372036854775807 of=true sf=true zero=false" 6 test_shift_361_data (fun m -> 
Printf.printf "shift_361 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("shift_362", machine_test "-9223372036854775807 l<< 0 ==> -9223372036854775807 of=true sf=true zero=false" 6 test_shift_362_data (fun m -> 
Printf.printf "shift_362 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775807L));
  ("shift_363", machine_test "-9223372036854775807 s>> 1 ==> -4611686018427387904 of=false sf=true zero=false" 6 test_shift_363_data (fun m -> 
Printf.printf "shift_363 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4611686018427387904L));
  ("shift_364", machine_test "-9223372036854775807 l>> 1 ==> 4611686018427387904 of=true sf=false zero=false" 6 test_shift_364_data (fun m -> 
Printf.printf "shift_364 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4611686018427387904L));
  ("shift_365", machine_test "-9223372036854775807 l<< 1 ==> 2 of=true sf=false zero=false" 6 test_shift_365_data (fun m -> 
Printf.printf "shift_365 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2L));
  ("shift_366", machine_test "-9223372036854775807 s>> 2 ==> -2305843009213693952 of=true sf=true zero=false" 6 test_shift_366_data (fun m -> 
Printf.printf "shift_366 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2305843009213693952L));
  ("shift_367", machine_test "-9223372036854775807 l>> 2 ==> 2305843009213693952 of=true sf=false zero=false" 6 test_shift_367_data (fun m -> 
Printf.printf "shift_367 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2305843009213693952L));
  ("shift_368", machine_test "-9223372036854775807 l<< 2 ==> 4 of=true sf=false zero=false" 6 test_shift_368_data (fun m -> 
Printf.printf "shift_368 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4L));
  ("shift_369", machine_test "-9223372036854775807 s>> 5 ==> -288230376151711744 of=true sf=true zero=false" 6 test_shift_369_data (fun m -> 
Printf.printf "shift_369 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -288230376151711744L));
  ("shift_370", machine_test "-9223372036854775807 l>> 5 ==> 288230376151711744 of=true sf=false zero=false" 6 test_shift_370_data (fun m -> 
Printf.printf "shift_370 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 288230376151711744L));
  ("shift_371", machine_test "-9223372036854775807 l<< 5 ==> 32 of=true sf=false zero=false" 6 test_shift_371_data (fun m -> 
Printf.printf "shift_371 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 32L));
  ("shift_372", machine_test "-9223372036854775807 s>> 11 ==> -4503599627370496 of=true sf=true zero=false" 6 test_shift_372_data (fun m -> 
Printf.printf "shift_372 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4503599627370496L));
  ("shift_373", machine_test "-9223372036854775807 l>> 11 ==> 4503599627370496 of=true sf=false zero=false" 6 test_shift_373_data (fun m -> 
Printf.printf "shift_373 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4503599627370496L));
  ("shift_374", machine_test "-9223372036854775807 l<< 11 ==> 2048 of=true sf=false zero=false" 6 test_shift_374_data (fun m -> 
Printf.printf "shift_374 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2048L));
  ("shift_375", machine_test "-9223372036854775807 s>> 17 ==> -70368744177664 of=true sf=true zero=false" 6 test_shift_375_data (fun m -> 
Printf.printf "shift_375 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -70368744177664L));
  ("shift_376", machine_test "-9223372036854775807 l>> 17 ==> 70368744177664 of=true sf=false zero=false" 6 test_shift_376_data (fun m -> 
Printf.printf "shift_376 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 70368744177664L));
  ("shift_377", machine_test "-9223372036854775807 l<< 17 ==> 131072 of=true sf=false zero=false" 6 test_shift_377_data (fun m -> 
Printf.printf "shift_377 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 131072L));
  ("shift_378", machine_test "-9223372036854775807 s>> 29 ==> -17179869184 of=true sf=true zero=false" 6 test_shift_378_data (fun m -> 
Printf.printf "shift_378 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -17179869184L));
  ("shift_379", machine_test "-9223372036854775807 l>> 29 ==> 17179869184 of=true sf=false zero=false" 6 test_shift_379_data (fun m -> 
Printf.printf "shift_379 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 17179869184L));
  ("shift_380", machine_test "-9223372036854775807 l<< 29 ==> 536870912 of=true sf=false zero=false" 6 test_shift_380_data (fun m -> 
Printf.printf "shift_380 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 536870912L));
  ("shift_381", machine_test "-9223372036854775807 s>> 31 ==> -4294967296 of=true sf=true zero=false" 6 test_shift_381_data (fun m -> 
Printf.printf "shift_381 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4294967296L));
  ("shift_382", machine_test "-9223372036854775807 l>> 31 ==> 4294967296 of=true sf=false zero=false" 6 test_shift_382_data (fun m -> 
Printf.printf "shift_382 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967296L));
  ("shift_383", machine_test "-9223372036854775807 l<< 31 ==> 2147483648 of=true sf=false zero=false" 6 test_shift_383_data (fun m -> 
Printf.printf "shift_383 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2147483648L));
  ("shift_384", machine_test "-9223372036854775807 s>> 32 ==> -2147483648 of=true sf=true zero=false" 6 test_shift_384_data (fun m -> 
Printf.printf "shift_384 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2147483648L));
  ("shift_385", machine_test "-9223372036854775807 l>> 32 ==> 2147483648 of=true sf=false zero=false" 6 test_shift_385_data (fun m -> 
Printf.printf "shift_385 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 2147483648L));
  ("shift_386", machine_test "-9223372036854775807 l<< 32 ==> 4294967296 of=true sf=false zero=false" 6 test_shift_386_data (fun m -> 
Printf.printf "shift_386 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967296L));
  ("shift_387", machine_test "-9223372036854775807 s>> 50 ==> -8192 of=true sf=true zero=false" 6 test_shift_387_data (fun m -> 
Printf.printf "shift_387 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8192L));
  ("shift_388", machine_test "-9223372036854775807 l>> 50 ==> 8192 of=true sf=false zero=false" 6 test_shift_388_data (fun m -> 
Printf.printf "shift_388 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8192L));
  ("shift_389", machine_test "-9223372036854775807 l<< 50 ==> 1125899906842624 of=true sf=false zero=false" 6 test_shift_389_data (fun m -> 
Printf.printf "shift_389 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1125899906842624L));
  ("shift_390", machine_test "-9223372036854775807 s>> 59 ==> -16 of=true sf=true zero=false" 6 test_shift_390_data (fun m -> 
Printf.printf "shift_390 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -16L));
  ("shift_391", machine_test "-9223372036854775807 l>> 59 ==> 16 of=true sf=false zero=false" 6 test_shift_391_data (fun m -> 
Printf.printf "shift_391 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 16L));
  ("shift_392", machine_test "-9223372036854775807 l<< 59 ==> 576460752303423488 of=true sf=false zero=false" 6 test_shift_392_data (fun m -> 
Printf.printf "shift_392 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 576460752303423488L));
  ("shift_393", machine_test "-9223372036854775807 s>> 63 ==> -1 of=true sf=true zero=false" 6 test_shift_393_data (fun m -> 
Printf.printf "shift_393 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_394", machine_test "-9223372036854775807 l>> 63 ==> 1 of=true sf=false zero=false" 6 test_shift_394_data (fun m -> 
Printf.printf "shift_394 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_395", machine_test "-9223372036854775807 l<< 63 ==> -9223372036854775808 of=true sf=true zero=false" 6 test_shift_395_data (fun m -> 
Printf.printf "shift_395 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -9223372036854775808L));
  ("shift_396", machine_test "-2 s>> 0 ==> -2 of=true sf=true zero=false" 6 test_shift_396_data (fun m -> 
Printf.printf "shift_396 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("shift_397", machine_test "-2 l>> 0 ==> -2 of=true sf=true zero=false" 6 test_shift_397_data (fun m -> 
Printf.printf "shift_397 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("shift_398", machine_test "-2 l<< 0 ==> -2 of=true sf=true zero=false" 6 test_shift_398_data (fun m -> 
Printf.printf "shift_398 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2L));
  ("shift_399", machine_test "-2 s>> 1 ==> -1 of=false sf=true zero=false" 6 test_shift_399_data (fun m -> 
Printf.printf "shift_399 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_400", machine_test "-2 l>> 1 ==> 9223372036854775807 of=true sf=false zero=false" 6 test_shift_400_data (fun m -> 
Printf.printf "shift_400 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9223372036854775807L));
  ("shift_401", machine_test "-2 l<< 1 ==> -4 of=false sf=true zero=false" 6 test_shift_401_data (fun m -> 
Printf.printf "shift_401 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == false && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4L));
  ("shift_402", machine_test "-2 s>> 2 ==> -1 of=true sf=true zero=false" 6 test_shift_402_data (fun m -> 
Printf.printf "shift_402 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_403", machine_test "-2 l>> 2 ==> 4611686018427387903 of=true sf=false zero=false" 6 test_shift_403_data (fun m -> 
Printf.printf "shift_403 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4611686018427387903L));
  ("shift_404", machine_test "-2 l<< 2 ==> -8 of=true sf=true zero=false" 6 test_shift_404_data (fun m -> 
Printf.printf "shift_404 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8L));
  ("shift_405", machine_test "-2 s>> 5 ==> -1 of=true sf=true zero=false" 6 test_shift_405_data (fun m -> 
Printf.printf "shift_405 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_406", machine_test "-2 l>> 5 ==> 576460752303423487 of=true sf=false zero=false" 6 test_shift_406_data (fun m -> 
Printf.printf "shift_406 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 576460752303423487L));
  ("shift_407", machine_test "-2 l<< 5 ==> -64 of=true sf=true zero=false" 6 test_shift_407_data (fun m -> 
Printf.printf "shift_407 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -64L));
  ("shift_408", machine_test "-2 s>> 11 ==> -1 of=true sf=true zero=false" 6 test_shift_408_data (fun m -> 
Printf.printf "shift_408 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_409", machine_test "-2 l>> 11 ==> 9007199254740991 of=true sf=false zero=false" 6 test_shift_409_data (fun m -> 
Printf.printf "shift_409 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 9007199254740991L));
  ("shift_410", machine_test "-2 l<< 11 ==> -4096 of=true sf=true zero=false" 6 test_shift_410_data (fun m -> 
Printf.printf "shift_410 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4096L));
  ("shift_411", machine_test "-2 s>> 17 ==> -1 of=true sf=true zero=false" 6 test_shift_411_data (fun m -> 
Printf.printf "shift_411 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_412", machine_test "-2 l>> 17 ==> 140737488355327 of=true sf=false zero=false" 6 test_shift_412_data (fun m -> 
Printf.printf "shift_412 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 140737488355327L));
  ("shift_413", machine_test "-2 l<< 17 ==> -262144 of=true sf=true zero=false" 6 test_shift_413_data (fun m -> 
Printf.printf "shift_413 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -262144L));
  ("shift_414", machine_test "-2 s>> 29 ==> -1 of=true sf=true zero=false" 6 test_shift_414_data (fun m -> 
Printf.printf "shift_414 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_415", machine_test "-2 l>> 29 ==> 34359738367 of=true sf=false zero=false" 6 test_shift_415_data (fun m -> 
Printf.printf "shift_415 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 34359738367L));
  ("shift_416", machine_test "-2 l<< 29 ==> -1073741824 of=true sf=true zero=false" 6 test_shift_416_data (fun m -> 
Printf.printf "shift_416 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1073741824L));
  ("shift_417", machine_test "-2 s>> 31 ==> -1 of=true sf=true zero=false" 6 test_shift_417_data (fun m -> 
Printf.printf "shift_417 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_418", machine_test "-2 l>> 31 ==> 8589934591 of=true sf=false zero=false" 6 test_shift_418_data (fun m -> 
Printf.printf "shift_418 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 8589934591L));
  ("shift_419", machine_test "-2 l<< 31 ==> -4294967296 of=true sf=true zero=false" 6 test_shift_419_data (fun m -> 
Printf.printf "shift_419 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -4294967296L));
  ("shift_420", machine_test "-2 s>> 32 ==> -1 of=true sf=true zero=false" 6 test_shift_420_data (fun m -> 
Printf.printf "shift_420 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_421", machine_test "-2 l>> 32 ==> 4294967295 of=true sf=false zero=false" 6 test_shift_421_data (fun m -> 
Printf.printf "shift_421 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 4294967295L));
  ("shift_422", machine_test "-2 l<< 32 ==> -8589934592 of=true sf=true zero=false" 6 test_shift_422_data (fun m -> 
Printf.printf "shift_422 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -8589934592L));
  ("shift_423", machine_test "-2 s>> 50 ==> -1 of=true sf=true zero=false" 6 test_shift_423_data (fun m -> 
Printf.printf "shift_423 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_424", machine_test "-2 l>> 50 ==> 16383 of=true sf=false zero=false" 6 test_shift_424_data (fun m -> 
Printf.printf "shift_424 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 16383L));
  ("shift_425", machine_test "-2 l<< 50 ==> -2251799813685248 of=true sf=true zero=false" 6 test_shift_425_data (fun m -> 
Printf.printf "shift_425 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -2251799813685248L));
  ("shift_426", machine_test "-2 s>> 59 ==> -1 of=true sf=true zero=false" 6 test_shift_426_data (fun m -> 
Printf.printf "shift_426 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_427", machine_test "-2 l>> 59 ==> 31 of=true sf=false zero=false" 6 test_shift_427_data (fun m -> 
Printf.printf "shift_427 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 31L));
  ("shift_428", machine_test "-2 l<< 59 ==> -1152921504606846976 of=true sf=true zero=false" 6 test_shift_428_data (fun m -> 
Printf.printf "shift_428 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1152921504606846976L));
  ("shift_429", machine_test "-2 s>> 63 ==> -1 of=true sf=true zero=false" 6 test_shift_429_data (fun m -> 
Printf.printf "shift_429 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == true && m.flags.fz == false && m.regs.(rind Rax) = -1L));
  ("shift_430", machine_test "-2 l>> 63 ==> 1 of=true sf=false zero=false" 6 test_shift_430_data (fun m -> 
Printf.printf "shift_430 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == false && m.regs.(rind Rax) = 1L));
  ("shift_431", machine_test "-2 l<< 63 ==> 0 of=true sf=false zero=true" 6 test_shift_431_data (fun m -> 
Printf.printf "shift_431 ==> %s, of=%B,sf=%B,zf=%B\n" (Int64.to_string m.regs.(rind Rax)) m.flags.fo m.flags.fs m.flags.fz; m.flags.fo == true && m.flags.fs == false && m.flags.fz == true && m.regs.(rind Rax) = 0L));
]

let other_team_tests = GradedTest("shift_tests", 5, shift_tests)