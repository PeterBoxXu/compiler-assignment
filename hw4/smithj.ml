open Assert
let prefix = "./smithj/"

let extra_tests = 
  [
    (prefix ^ "scoping1.oat", "", "2");
    (prefix ^ "scoping2.oat", "", "0");
    (prefix ^ "glob_arr.oat", "\"a b c d e f g\"", "7");
    (prefix ^ "glob_arr.oat", "abc", "1");
    (prefix ^ "early_return1.oat", "", "10");
    (prefix ^ "early_return2.oat", "", "1");
    (prefix ^ "early_return3.oat", "", "10");
    (prefix ^ "early_loop_termin1.oat", "", "0");
    (prefix ^ "early_loop_termin2.oat", "", "100");
    (prefix ^ "early_loop_termin3.oat", "", "10");
  ]

let tests = Gradedtests.executed_oat_file @@ extra_tests

let test_suite : suite = [Test ("JSmith", tests)]