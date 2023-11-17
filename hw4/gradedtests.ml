open Ast
open Astlib
open Assert
open Driver

(* Do NOT modify this file -- we will overwrite it with our *)
(* own version when we test your project.                   *)

(* These tests will be used to grade your assignment *)

let assert_eq_ast (f: 'a -> 'a -> bool) (print : 'a -> string) (x: 'a) (y: unit -> 'a)  : assertion =
  fun () ->
  let result = y () in
  if f x result then () else
      let msg = Printf.sprintf "EXPECTED: %s\nGOT: %s\n" (print x) (print result) in
      failwith msg

let parse_test parse (compare : 'a -> 'a -> bool) (printer : 'a -> string) (code : string) (ast : 'a)  : assertion =
  let lexbuf = Lexing.from_string code in
  assert_eq_ast compare printer ast (fun () -> (parse Lexer.token lexbuf))

let exp_test code ast = parse_test Parser.exp_top eq_exp string_of_exp code ast

let parse_consts =
  [ ("parse consts test one", exp_test "bool[] null" (no_loc (CNull (RArray TBool))))
  ; ("parse consts test two", exp_test "42" (no_loc (CInt 42L)))
  ; ("parse consts test three", exp_test "true" (no_loc (CBool true)))
  ; ("parse consts test four", exp_test "false" (no_loc (CBool false)))
  ; ("parse consts test five", exp_test "\"hello world\"" (no_loc (CStr "hello world")))
  ; ("parse consts test six", exp_test "new int[]{1, 2, 3}" (no_loc (CArr (TInt, [no_loc (CInt 1L); no_loc (CInt 2L); no_loc (CInt 3L)]))))
  ]

let parse_exp_tests =
  [ ("parse exp test 1", exp_test "1" (no_loc (CInt 1L)))
  ; ("parse exp test 2", exp_test "1+2" (no_loc (Bop (Add,no_loc (CInt 1L),no_loc (CInt 2L)))))
  ; ("parse exp test 3", exp_test "1+2+3" (no_loc (Bop (Add,no_loc (Bop (Add,no_loc (CInt 1L),no_loc (CInt 2L))),no_loc (CInt 3L)))))
  ; ("parse exp test 4", exp_test "1+2*3" (no_loc (Bop (Add,no_loc (CInt 1L),no_loc (Bop (Mul,no_loc (CInt 2L),no_loc (CInt 3L)))))))
  ; ("parse exp test 5", exp_test "1+(2+3)" (no_loc (Bop (Add,no_loc (CInt 1L),no_loc (Bop (Add,no_loc (CInt 2L),no_loc (CInt 3L)))))))
  ; ("parse exp test 6", exp_test "(1+2)*3" (no_loc (Bop (Mul,no_loc (Bop (Add,no_loc (CInt 1L),no_loc (CInt 2L))),no_loc (CInt 3L)))))
  ; ("parse exp test 7", exp_test "1+2*3+4" (no_loc (Bop (Add,no_loc (Bop (Add,no_loc (CInt 1L),no_loc (Bop (Mul,no_loc (CInt 2L),no_loc (CInt 3L))))),no_loc (CInt 4L)))))
  ; ("parse exp test 8", exp_test "1-2 == 3+4" (no_loc (Bop (Eq,no_loc (Bop (Sub,no_loc (CInt 1L),no_loc (CInt 2L))),no_loc (Bop (Add,no_loc (CInt 3L),no_loc (CInt 4L)))))))
  ; ("parse exp test 9", exp_test "(1+2)*(3+4)" (no_loc (Bop (Mul,no_loc (Bop (Add,no_loc (CInt 1L),no_loc (CInt 2L))),no_loc (Bop (Add,no_loc (CInt 3L),no_loc (CInt 4L)))))))
  ; ("parse exp test 10", exp_test "true & true | false" (no_loc (Bop (Or,no_loc (Bop (And,no_loc (CBool true),no_loc (CBool true))),no_loc (CBool false)))))
  ; ("parse exp test 11", exp_test "true & (true | false)" (no_loc (Bop (And,no_loc (CBool true),no_loc (Bop (Or,no_loc (CBool true),no_loc (CBool false)))))))
  ; ("parse exp test 12", exp_test "!(~5 == ~6) & -5+10 < 0" (no_loc (Bop (And,no_loc (Uop (Lognot, no_loc (Bop (Eq,no_loc (Uop (Bitnot, no_loc (CInt 5L))),no_loc (Uop (Bitnot, no_loc (CInt 6L))))))),no_loc (Bop (Lt,no_loc (Bop (Add,no_loc (Uop (Neg, no_loc (CInt 5L))),no_loc (CInt 10L))),no_loc (CInt 0L)))))))
  ; ("parse exp test 13", exp_test "1+2 >> (3-4 >>> 7*8) << 9" (no_loc (Bop (Shl,no_loc (Bop (Shr,no_loc (Bop (Add,no_loc (CInt 1L),no_loc (CInt 2L))),no_loc (Bop (Sar,no_loc (Bop (Sub,no_loc (CInt 3L),no_loc (CInt 4L))),no_loc (Bop (Mul,no_loc (CInt 7L),no_loc (CInt 8L))))))),no_loc (CInt 9L)))))
  ; ("parse exp test 14", exp_test "~5 >> 7 - 10 < 9 * -6-4 | !false" (no_loc (Bop (Or,no_loc (Bop (Lt,no_loc (Bop (Shr,no_loc (Uop (Bitnot, no_loc (CInt 5L))),no_loc (Bop (Sub,no_loc (CInt 7L),no_loc (CInt 10L))))),no_loc (Bop (Sub,no_loc (Bop (Mul,no_loc (CInt 9L),no_loc (Uop (Neg, no_loc (CInt 6L))))),no_loc (CInt 4L))))),no_loc (Uop (Lognot, no_loc (CBool false)))))))
  ; ("parse exp test 15", exp_test "false == 2 >= 3 | true !=  9 - 10 <= 4" (no_loc (Bop (Or,no_loc (Bop (Eq,no_loc (CBool false),no_loc (Bop (Gte,no_loc (CInt 2L),no_loc (CInt 3L))))),no_loc (Bop (Neq,no_loc (CBool true),no_loc (Bop (Lte,no_loc (Bop (Sub,no_loc (CInt 9L),no_loc (CInt 10L))),no_loc (CInt 4L)))))))))
  ; ("parse exp test 16", exp_test "1-2*3+4 < 5 | 6+7-2 > 1 | true & false" (no_loc (Bop (Or,no_loc (Bop (Or,no_loc (Bop (Lt,no_loc (Bop (Add,no_loc (Bop (Sub,no_loc (CInt 1L),no_loc (Bop (Mul,no_loc (CInt 2L),no_loc (CInt 3L))))),no_loc (CInt 4L))),no_loc (CInt 5L))),no_loc (Bop (Gt,no_loc (Bop (Sub,no_loc (Bop (Add,no_loc (CInt 6L),no_loc (CInt 7L))),no_loc (CInt 2L))),no_loc (CInt 1L))))),no_loc (Bop (And,no_loc (CBool true),no_loc (CBool false)))))))
  ; ("parse exp test 17", exp_test "true [&] false | false [|] true & true" (no_loc (Bop (IOr,no_loc (Bop (IAnd,no_loc (CBool true),no_loc (Bop (Or,no_loc (CBool false),no_loc (CBool false))))),no_loc (Bop (And,no_loc (CBool true),no_loc (CBool true)))))))
  ; ("parse exp test 18", exp_test "true [|] false [&] true & true | false" (no_loc (Bop (IOr,no_loc (CBool true),no_loc (Bop (IAnd,no_loc (CBool false),no_loc (Bop (Or,no_loc (Bop (And,no_loc (CBool true),no_loc (CBool true))),no_loc (CBool false)))))))))
  ; ("parse exp test 19", exp_test "new int[3]" (no_loc (NewArr (TInt,no_loc (CInt 3L)))))
  ; ("parse exp test 20", exp_test "bar (x, \"compilerdesign\")" (no_loc (Call (no_loc (Id "bar"), [ no_loc (Id ("x")) ; no_loc (CStr "compilerdesign") ]))))
  ; ("parse exp test 21", exp_test "new int[3]" (no_loc (NewArr (TInt,no_loc (CInt 3L)))))
  ; ("parse exp test 22", exp_test "new int[][]{new int[]{10,11},new int[]{20,21},new int[]{30,31}}" (no_loc (CArr (TRef (RArray TInt), [ no_loc (CArr (TInt, [ no_loc (CInt 10L) ; no_loc (CInt 11L) ])) ; no_loc (CArr (TInt, [ no_loc (CInt 20L) ; no_loc (CInt 21L) ])) ; no_loc (CArr (TInt, [ no_loc (CInt 30L) ; no_loc (CInt 31L) ])) ]))))
  ; ("parse exp test 23", exp_test "proc1 ()" (no_loc (Call (no_loc (Id "proc1"), [  ]))))
  ; ("parse exp test 24", exp_test "array[0]" (no_loc (Index (no_loc (Id ("array")), no_loc (CInt 0L)))))
  ; ("parse exp test 25", exp_test "i + y[1][1]" (no_loc (Bop (Add,no_loc (Id ("i")),no_loc (Index (no_loc (Index (no_loc (Id ("y")), no_loc (CInt 1L))), no_loc (CInt 1L)))))))
  ; ("parse exp test 26", exp_test "-!~x[0][0]" (no_loc (Uop (Neg, no_loc (Uop (Lognot, no_loc (Uop (Bitnot, no_loc (Index (no_loc (Index (no_loc (Id ("x")), no_loc (CInt 0L))), no_loc (CInt 0L)))))))))))
  ; ("parse exp test 27", exp_test "print_string (string_concat (str1, str2))" (no_loc (Call (no_loc (Id "print_string"), [ no_loc (Call (no_loc (Id "string_concat"), [ no_loc (Id ("str1")) ; no_loc (Id ("str2")) ])) ]))))
  ]

let stmt_test code ast = parse_test Parser.stmt_top eq_stmt string_of_stmt code ast

let parse_stmt_tests =
  [ ("parse stmt test 1", stmt_test "var n = 8;" (no_loc (Decl ("n", no_loc (CInt 8L) ))))
  ; ("parse stmt test 2", stmt_test "var x=a[0];" (no_loc (Decl ("x", no_loc (Index (no_loc (Id ("a")), no_loc (CInt 0L)))))))
  ; ("parse stmt test 3", stmt_test "return;" (no_loc (Ret (None))))
  ; ("parse stmt test 4", stmt_test "return x+y;" (no_loc (Ret (Some (no_loc (Bop (Add,no_loc (Id ("x")),no_loc (Id ("y")))))))))
  ; ("parse stmt test 5", stmt_test "a[j>>1]=v;" (no_loc (Assn (no_loc (Index (no_loc (Id ("a")), no_loc (Bop (Shr,no_loc (Id ("j")),no_loc (CInt 1L))))) ,no_loc (Id ("v"))))))
  ; ("parse stmt test 6", stmt_test "foo(a,1,n);" (no_loc (SCall (no_loc (Id "foo"), [ no_loc (Id ("a")) ; no_loc (CInt 1L) ; no_loc (Id ("n")) ]))))
  ; ("parse stmt test 7", stmt_test "a[i]=a[i>>1];" (no_loc (Assn (no_loc (Index (no_loc (Id ("a")), no_loc (Id ("i")))) , no_loc (Index (no_loc (Id ("a")), no_loc (Bop (Shr,no_loc (Id ("i")),no_loc (CInt 1L)))))))))
  ; ("parse stmt test 8", stmt_test "var a = new int[8];" (no_loc (Decl ("a", no_loc (NewArr (TInt,no_loc (CInt 8L)))))))
  ; ("parse stmt test 9", stmt_test "if((j<n)&(a[j]<a[j+1])) { j=j+1; }" (no_loc (If (no_loc (Bop (And,no_loc (Bop (Lt,no_loc (Id ("j")),no_loc (Id ("n")))),no_loc (Bop (Lt,no_loc (Index (no_loc (Id ("a")), no_loc (Id ("j")))),no_loc (Index (no_loc (Id ("a")), no_loc (Bop (Add, no_loc (Id ("j")), no_loc (CInt 1L))))))))),[ no_loc (Assn (no_loc (Id ("j")),no_loc (Bop (Add,no_loc (Id ("j")),no_loc (CInt 1L))))) ],[  ]))))
  ; ("parse stmt test 10", stmt_test "if (c == 1) { var i = 0; var j = 0; var k = 0; }" (no_loc (If (no_loc (Bop (Eq,no_loc (Id ("c")),no_loc (CInt 1L))),[ no_loc (Decl ("i", no_loc (CInt 0L))) ; no_loc (Decl ("j", no_loc (CInt 0L))) ; no_loc (Decl ("k", no_loc (CInt 0L))) ],[  ]))))
  ; ("parse stmt test 11", stmt_test "while((i>1)&(a[i>>1]<v)) { a[i]=a[i>>1]; i=i>>1; }" (no_loc (While (no_loc (Bop (And,no_loc (Bop (Gt,no_loc (Id ("i")),no_loc (CInt 1L))),no_loc (Bop (Lt,no_loc (Index (no_loc (Id ("a")),no_loc (Bop (Shr, no_loc (Id ("i")), no_loc (CInt 1L))))),no_loc (Id ("v")))))),[ no_loc (Assn (no_loc (Index (no_loc (Id ("a")), no_loc (Id ("i")))), no_loc (Index (no_loc (Id ("a")), no_loc (Bop (Shr, no_loc (Id ("i")), no_loc (CInt 1L))))))) ; no_loc (Assn (no_loc (Id ("i")),no_loc (Bop (Shr,no_loc (Id ("i")),no_loc (CInt 1L))))) ]))))
  ; ("parse stmt test 12", stmt_test "for (; i > 0; i=i-1;) { for (var j = 1; j <= i; j=j+1;) { if (numbers[j-1] > numbers[i]) { temp = numbers[j-1]; numbers[j-1] = numbers[i]; numbers[i] = temp; } } }" (no_loc (For ([  ],Some (no_loc (Bop (Gt,no_loc (Id ("i")),no_loc (CInt 0L)))),Some (no_loc (Assn (no_loc (Id ("i")),no_loc (Bop (Sub,no_loc (Id ("i")),no_loc (CInt 1L)))))),[ no_loc (For ([ "j", no_loc (CInt 1L) ],Some (no_loc (Bop (Lte,no_loc (Id ("j")),no_loc (Id ("i"))))),Some (no_loc (Assn (no_loc (Id ("j")),no_loc (Bop (Add,no_loc (Id ("j")),no_loc (CInt 1L)))))),[ no_loc (If (no_loc (Bop (Gt,no_loc (Index (no_loc (Id ("numbers")), no_loc (Bop (Sub, no_loc (Id ("j")), no_loc (CInt 1L))))),no_loc (Index (no_loc (Id ("numbers")), no_loc (Id ("i")))))),[ no_loc (Assn (no_loc (Id ("temp")), no_loc (Index (no_loc (Id ("numbers")), no_loc (Bop (Sub,no_loc (Id ("j")),no_loc (CInt 1L))))))) ; no_loc (Assn (no_loc (Index (no_loc (Id ("numbers")), no_loc (Bop (Sub,no_loc (Id ("j")),no_loc (CInt 1L))))) ,no_loc (Index (no_loc (Id ("numbers")), no_loc (Id ("i")))))) ; no_loc (Assn (no_loc (Index (no_loc (Id ("numbers")), no_loc (Id ("i")))) ,no_loc (Id ("temp")))) ],[  ])) ])) ]))))
  ; ("parse stmt test 13", stmt_test "for (var i = 0, var j = 0; ;) { }" (no_loc (For ([ "i", no_loc (CInt 0L) ; "j", no_loc (CInt 0L) ], None, None, [ ]))))
  ]

let parse_file_test filepath ast =
  assert_eq_ast Astlib.eq_prog string_of_prog ast (fun () -> Driver.parse_oat_file filepath)

let parse_prog_tests =
  [ ("parse prog test 1", parse_file_test "oatprograms/easy_p1.oat" Progasts.easy_p1_ast)
  ; ("parse prog test 2", parse_file_test "oatprograms/easy_p2.oat" Progasts.easy_p2_ast)
  ; ("parse prog test 3", parse_file_test "oatprograms/easy_p3.oat" Progasts.easy_p3_ast)
  ; ("parse prog test 4", parse_file_test "oatprograms/easy_p4.oat" Progasts.easy_p4_ast)
  ; ("parse prog test 5", parse_file_test "oatprograms/easy_p5.oat" Progasts.easy_p5_ast)
  ; ("parse prog test 6", parse_file_test "oatprograms/easy_p6.oat" Progasts.easy_p6_ast)
  ; ("parse prog test 7", parse_file_test "oatprograms/easy_p7.oat" Progasts.easy_p7_ast)
  ]

let parse_tests = parse_consts
                @ parse_exp_tests
                @ parse_stmt_tests
                @ parse_prog_tests

let oat_file_test path args =
  let () = Platform.verb @@ Printf.sprintf "** Processing: %s\n" path in

  let output_path = !Platform.output_path in
  let dot_ll_file = Platform.gen_name output_path "test" ".ll" in
  let exec_file = Platform.gen_name output_path "exec" "" in
  let tmp_file = Platform.gen_name output_path "tmp" ".txt" in

  let oat_ast = parse_oat_file path in
  let ll_ast = Frontend.cmp_prog oat_ast in
  let ll_str = Driver.string_of_ll_ast path ll_ast in
  let () = write_file dot_ll_file ll_str in
  let () = Platform.link (dot_ll_file::["runtime.c"]) exec_file in

  let result = Driver.run_program_error args exec_file tmp_file in
  (*  let () = Platform.sh (Printf.sprintf "rm -f %s %s %s" dot_ll_file exec_file tmp_file) Platform.ignore_error in *)
  let () = Platform.verb @@ Printf.sprintf "** Executable output:\n%s\n" result in
  result

let executed_oat_file tests =
  List.map (fun (path, args, ans) ->
      (path ^ " args: " ^ args), assert_eqfs (fun () -> oat_file_test path args) ans)
    tests

let easiest_tests = [
  ("oatprograms/easyrun1.oat", "", "17");
  ("oatprograms/easyrun2.oat", "", "35");
  ("oatprograms/easyrun3.oat", "", "73");
  ("oatprograms/easyrun4.oat", "", "6");
  ("oatprograms/easyrun5.oat", "", "212");
  ("oatprograms/easyrun6.oat", "", "9");
  ("oatprograms/easyrun7.oat", "", "23");
  ("oatprograms/easyrun8.oat", "", "96");
  ("oatprograms/easyrun9.oat", "", "236");
  ("oatprograms/easyrun10.oat", "", "254");
]

let globals_tests = [
  ("oatprograms/globals1.oat", "", "42");
  ("oatprograms/globals2.oat", "", "17");
  ("oatprograms/globals3.oat", "", "17");
  ("oatprograms/globals4.oat", "", "5");
  ("oatprograms/globals5.oat", "", "17");
  ("oatprograms/globals6.oat", "", "15");
  ("oatprograms/globals7.oat", "", "3");
]

let path_tests = [
 ("oatprograms/path1.oat", "", "17");
 ("oatprograms/path2.oat", "", "35");
 ("oatprograms/path3.oat", "", "3");
 ("oatprograms/arrayargs.oat", "", "17");
 ("oatprograms/arrayargs1.oat", "", "17");
 ("oatprograms/arrayargs2.oat", "", "17");
 ("oatprograms/arrayargs3.oat", "", "34");
]

let easy_tests = [
    ("oatprograms/run13.oat", "", "1");
    ("oatprograms/run21.oat", "", "99");
    ("oatprograms/run26.oat", "", "0");
    ("oatprograms/run27.oat", "", "99");
    ("oatprograms/run28.oat", "", "18");
    ("oatprograms/run29.oat", "", "1");
    ("oatprograms/run30.oat", "", "9");
    ("oatprograms/run31.oat", "", "9");
    ("oatprograms/run32.oat", "", "33");
    ("oatprograms/run33.oat", "", "1");
    ("oatprograms/run34.oat", "", "66");
    ("oatprograms/run35.oat", "", "66");
    ("oatprograms/run36.oat", "", "0");
    ("oatprograms/run37.oat", "", "2");
    ("oatprograms/run38.oat", "", "31");
    ("oatprograms/run39.oat", "a", "2");
    ("oatprograms/run40.oat", "", "8");
    ("oatprograms/run41.oat", "", "3");
    ("oatprograms/run42.oat", "", "2");
    ("oatprograms/run49.oat", "", "abc0");
    ("oatprograms/run50.oat", "", "abcde0");
    ("oatprograms/run60.oat", "", "42");
    ("oatprograms/run61.oat", "", "420");
]

let medium_tests = [
  ("oatprograms/fact.oat", "", "1200");
  ("oatprograms/run1.oat", "", "153");
  ("oatprograms/run2.oat", "", "6");
  ("oatprograms/run3.oat", "", "2");
  ("oatprograms/run4.oat", "", "42");
  ("oatprograms/run5.oat", "", "4");
  ("oatprograms/run6.oat", "", "1");
  ("oatprograms/run7.oat", "", "20");
  ("oatprograms/run8.oat", "", "2");
  ("oatprograms/run9.oat", "", "4");
  ("oatprograms/run10.oat", "", "5");
  ("oatprograms/run11.oat", "", "7");
  ("oatprograms/run14.oat", "", "16");
  ("oatprograms/run15.oat", "", "19");
  ("oatprograms/run16.oat", "", "13");
  ("oatprograms/run18.oat", "", "231");
  ("oatprograms/run19.oat", "", "231");
  ("oatprograms/run20.oat", "", "19");
  ("oatprograms/run22.oat", "", "abc0");
  ("oatprograms/run23.oat", "", "1230");
  ("oatprograms/run24.oat", "", "0");
  ("oatprograms/run25.oat", "", "nnn0");
  ("oatprograms/run43.oat", "", "42");
  ("oatprograms/run44.oat", "", "hello0");
  ("oatprograms/run45.oat", "", "420");
  ("oatprograms/run46.oat", "", "420");
  ("oatprograms/run47.oat", "", "3");
  ("oatprograms/run48.oat", "", "11");
  ("oatprograms/run53.oat", "", "nnn0");
  ("oatprograms/lib4.oat", "", "53220");
  ("oatprograms/lib5.oat", "", "20");
  ("oatprograms/lib6.oat", "", "56553");
  ("oatprograms/lib7.oat", "", "53");
  ("oatprograms/lib8.oat", "", "Hello world!0");
  ("oatprograms/lib9.oat", "a b c d", "abcd5");
  ("oatprograms/lib11.oat", "", "45");
  ("oatprograms/lib14.oat", "", "~}|{zyxwvu0");
  ("oatprograms/lib15.oat", "123456789", "456780");
]

let hard_tests = [
("oatprograms/fac.oat", "", "120");
("oatprograms/qsort.oat", "", "kpyf{shomfhkmopsy{255");
("oatprograms/bsort.oat", "", "y}xotnuw notuwxy}255");
("oatprograms/msort.oat", "", "~}|{zyxwvu uvwxyz{|}~ 0");
("oatprograms/msort2.oat", "", "~}|{zyxwvu uvwxyz{|}~ 0");
("oatprograms/selectionsort.oat", "", "01253065992000");
("oatprograms/matrixmult.oat", "", "19 16 13 23 \t5 6 7 6 \t19 16 13 23 \t5 6 7 6 \t0");
]

let old_student_tests = [
    ("oatprograms/binary_search.oat", "", "Correct!0")
  ; ("oatprograms/xor_shift.oat", "", "838867572\n22817190600")
  ; ("oatprograms/sieve.oat", "", "25")
  ; ("oatprograms/count_sort.oat", "", "AFHZAAEYC\nAAACEFHYZ0")
  ; ("oatprograms/fibo.oat", "", "0")
  ; ("oatprograms/heap.oat", "", "1")
  ; ("oatprograms/binary_gcd.oat", "", "3")
  ; ("oatprograms/lfsr.oat", "", "TFTF FFTT0")
  ; ("oatprograms/gnomesort.oat", "", "01253065992000")
  ; ("oatprograms/josh_joyce_test.oat", "", "0")
  ; ("oatprograms/gcd.oat", "", "16")
  ; ("oatprograms/life.oat", "", "00101001100101000")
  ; ("oatprograms/lcs.oat", "", "OAT0")
  ; ("oatprograms/insertion_sort.oat", "", "42")
  ; ("oatprograms/maxsubsequence.oat", "", "107")
]

let student_tests = [] 

let tests : suite =
  [ GradedTest("parse tests", 15, parse_tests);
    GradedTest("easiest tests", 15, executed_oat_file easiest_tests);
    GradedTest("globals tests", 10, executed_oat_file globals_tests);
    GradedTest("path tests", 10, executed_oat_file path_tests);
    GradedTest("easy tests", 10, executed_oat_file easy_tests);
    GradedTest("medium tests", 10, executed_oat_file medium_tests);
    GradedTest("hard tests", 10, executed_oat_file (hard_tests @ old_student_tests));
    GradedTest("hidden tests", 20, executed_oat_file student_tests);
  ]

let graded_tests : suite = tests
