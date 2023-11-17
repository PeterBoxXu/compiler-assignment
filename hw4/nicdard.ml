(* Add path to test files *)
let prefix = List.map (fun (fname, args, expected_result) -> 
  ("./nicdard/" ^ fname, args, expected_result))

let easy_tests = 
  [ ("easyrun0.oat", "", "10")
  ; ("vdecl.oat", "", "0")
  ; ("neg.oat", "", "246")
  ; ("return0.oat", "", "1")
  ; ("assign.oat", "", "246")
  ; ("while.oat", "", "0")
  ; ("while1.oat", "", "1")
  ; ("equality.oat", "", "1")
  ; ("inequality.oat", "", "0")
  ; ("greater.oat", "", "0")
  ; ("less.oat", "", "0")
  ; ("greatereq.oat", "", "1")
  ; ("lesseq.oat", "", "1")
  ; ("for.oat", "", "5")
  ; ("and1.oat", "", "11")
  ; ("and2.oat", "", "11")
  ; ("or1.oat", "", "26")
  ; ("or2.oat", "", "26")
  ; ("call.oat", "", "10")
  ; ("sgstring.oat", "", "0")
  ; ("nullref.oat", "", "0")
  ; ("shoisted.oat", "", "local string0")
  ; ("shoisted2.oat", "", "0")
  ; ("arglobal.oat", "", "15")
  ; ("arglobal2.oat", "", "15")
  ; ("arglobal3.oat", "", "10")
  ; ("arlocal0.oat", "", "15")
  ; ("arlocal1.oat", "", "15")
  ; ("arlocal2.oat", "", "0")
  ; ("arlocal3.oat", "", "3")
  ; ("if.oat", "", "3")
  ; ("function.oat", "", "1")
  ; ("whileterminator1.oat", "", "10")
  ; ("whileterminator2.oat", "", "0")
  ]

let nicdard_tests = Gradedtests.executed_oat_file @@ prefix easy_tests
