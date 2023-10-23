open Assert
open X86
open Ll
open Backend

(* Do NOT modify this file -- we will overwrite it with our *)
(* own version when we test your project.                   *)

(* These tests will be used to grade your assignment *)

let size_ty_tests =
  [ ("ty_size1", assert_eqf (fun () -> size_ty [] I1) 8)
  ; ("ty_size3", assert_eqf (fun () -> size_ty [] I64) 8)
  ; ("ty_size4", assert_eqf (fun () -> size_ty [] (Ptr Void)) 8)
  ; ("ty_size2", assert_eqf (fun () -> size_ty [] (Ptr I1)) 8)
  ; ("ty_size5", assert_eqf (fun () -> size_ty [] (Array (3, I64))) 24)
  ; ("ty_size6", assert_eqf
    (fun () -> size_ty [] (Struct [I64; I1; Ptr I8; Ptr I64; Array (10, I1) ])) 112)
  ; ("ty size7", assert_eqf
    (fun () -> size_ty [("O", I1);("S", I64)] (Struct [Namedt "O"; (Array (2, Namedt "S"))])) 24)
  ]

let arg_loc_tests =
  []

let exec_e2e_ast ll_ast args extra_files =
  let output_path = !Platform.output_path in
  let dot_s_file = Platform.gen_name output_path "test" ".s" in
  let exec_file = Platform.gen_name output_path "exec" "" in
  let asm_ast = Backend.compile_prog ll_ast in
  let asm_str = X86.string_of_prog asm_ast in
  let _ = Driver.write_file dot_s_file asm_str in
  let _ = Platform.link (dot_s_file::extra_files) exec_file in
  let result = Driver.run_executable args exec_file in
  let _ = Platform.sh (Printf.sprintf "rm -f %s %s" dot_s_file exec_file) Platform.ignore_error in
  let _ = Platform.verb @@ Printf.sprintf "** Executable exited with: %d\n" result in
  Int64.of_int result


let exec_e2e_file path args =
  let ast = Driver.parse_ll_file path in
  exec_e2e_ast ast args []

let io_test path args =
  let ll_ast = Driver.parse_ll_file path in
  let output_path = !Platform.output_path in
  let dot_s_file = Platform.gen_name output_path "test" ".s" in
  let exec_file = Platform.gen_name output_path "exec" "" in
  let tmp_file = Platform.gen_name output_path "tmp" ".txt" in
  let asm_ast = Backend.compile_prog ll_ast in
  let asm_str = X86.string_of_prog asm_ast in
  let _ = Driver.write_file dot_s_file asm_str in
  let _ = Platform.link (dot_s_file::["cinterop.c"]) exec_file in
  let args = String.concat " " args in
  let result = Driver.run_program args exec_file tmp_file in
  let _ = Platform.sh (Printf.sprintf "rm -f %s %s %s" dot_s_file exec_file tmp_file) Platform.ignore_error in
  let _ = Platform.verb @@ Printf.sprintf "** Executable output:\n%s\n" result in
  result

let c_link_test c_files path args =
  let ll_ast = Driver.parse_ll_file path in
  let output_path = !Platform.output_path in
  let dot_s_file = Platform.gen_name output_path "test" ".s" in
  let exec_file = Platform.gen_name output_path "exec" "" in
  let asm_ast = Backend.compile_prog ll_ast in
  let asm_str = X86.string_of_prog asm_ast in
  let _ = Driver.write_file dot_s_file asm_str in
  let _ = Platform.link (dot_s_file::c_files) exec_file in
  let args = String.concat " " args in
  let result = Driver.run_executable args exec_file in
  let _ = Platform.sh (Printf.sprintf "rm -f %s %s" dot_s_file exec_file) Platform.ignore_error in
    Int64.of_int result

let executed tests =
  List.map (fun (fn, ans) ->
      fn, assert_eqf (fun () -> exec_e2e_file fn "") ans)
    tests

let executed_io tests =
  List.map (fun (fn, args, ans) ->
      (fn ^ ":" ^ (String.concat " " args)), assert_eqf (fun () -> io_test fn args) ans)
    tests

let executed_c_link tests =
  List.map (fun (c_file, fn, args, ans) ->
      (fn ^ ":" ^ (String.concat " " args)), assert_eqf (fun () -> c_link_test c_file fn args) ans)
    tests

let binop_tests =
  [ "llprograms/add.ll", 14L
  ; "llprograms/sub.ll", 1L
  ; "llprograms/mul.ll", 45L
  ; "llprograms/and.ll", 0L
  ; "llprograms/or.ll",  1L
  ; "llprograms/xor.ll", 0L
  ; "llprograms/shl.ll", 168L
  ; "llprograms/lshr.ll", 10L
  ; "llprograms/ashr.ll", 5L ]

let calling_convention_tests =
  [ "llprograms/call.ll", 42L
  ; "llprograms/call1.ll", 17L
  ; "llprograms/call2.ll", 19L
  ; "llprograms/call3.ll", 34L
  ; "llprograms/call4.ll", 34L
  ; "llprograms/call5.ll", 24L
  ; "llprograms/call6.ll", 26L
  ]

let memory_tests =
  [ "llprograms/alloca1.ll", 17L
  ; "llprograms/alloca2.ll", 17L
  ; "llprograms/global1.ll", 12L
  ]

let terminator_tests =
  [ "llprograms/return.ll", 0L
  ; "llprograms/return42.ll", 42L
  ; "llprograms/br1.ll", 9L
  ; "llprograms/br2.ll", 17L
  ; "llprograms/cbr1.ll", 7L
  ; "llprograms/cbr2.ll", 9L
  ; "llprograms/duplicate_lbl.ll", 1L
  ]

let bitcast_tests =
  [ "llprograms/bitcast1.ll", 3L
  ]

let gep_tests =
  [ "llprograms/gep1.ll", 6L
  ; "llprograms/gep2.ll", 4L
  ; "llprograms/gep3.ll", 1L
  ; "llprograms/gep4.ll", 2L
  ; "llprograms/gep5.ll", 4L
  ; "llprograms/gep6.ll", 7L
  ; "llprograms/gep7.ll", 7L
  ; "llprograms/gep8.ll", 2L
  ]

let io_tests =
  [ "llprograms/helloworld.ll", [], "hello, world!"
  ; "llprograms/string1.ll", [], "hello, world!hello, world!"
  ; "llprograms/callback1.ll", [], "38"
  ; "llprograms/args1.ll", ["hello"], "argc < 3"
  ; "llprograms/args1.ll", ["hello"; "compilerdesign"], "hellocompilerdesign"
  ; "llprograms/args1.ll", ["hello"; "compilerdesign"; "foo"], "argc > 3"
  ]




(* Hidden *)
let hidden_large_tests =
  []

let large_tests = [ "llprograms/list1.ll", 3L
                  ; "llprograms/cbr.ll", 42L
                  ; "llprograms/factorial.ll", 120L
                  ; "llprograms/factrect.ll", 120L
                  ; "llprograms/duplicate_factorial.ll", 240L
                  ]



let tests : suite =
  [ GradedTest("size_ty tests", 5, size_ty_tests)
  ; GradedTest("arg_loc tests", 5, arg_loc_tests)
  ; GradedTest("executed binop tests", 5, executed binop_tests)
  ; GradedTest("terminator tests", 10, executed terminator_tests)
  ; GradedTest("memory tests", 10, executed memory_tests)
  ; GradedTest("calling convention tests", 15, executed calling_convention_tests)
  ; GradedTest("bitcast tests", 2, executed bitcast_tests)
  ; GradedTest("gep tests", 10, executed gep_tests)
  ; GradedTest("large tests", 10, executed large_tests)
  ; GradedTest("hidden large tests", 18, hidden_large_tests)
  ; GradedTest("io tests", 10, executed_io io_tests)
  ]


let graded_tests : suite =
  tests
