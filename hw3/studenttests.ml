open Assert

(* These tests are provided by you -- they will not be graded  *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let provided_tests : suite =   
  [ 
  Test ("dbernhard", Gradedtests.executed Dbernhard.dbernhard_tests)
  ; Test ("nicdard", Nicdard.executed Nicdard.nicdard_tests)
  ; Test ("haenniro", Gradedtests.executed_c_link Haenniro.my_tests)
  ; Test ("zikai", Gradedtests.executed Zikai.zikai_tests)
  ]