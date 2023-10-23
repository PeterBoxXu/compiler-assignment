open Assert
open Arg
open X86
open Simulator

exception Ran_tests
let worklist = ref []

let suite = ref (timeout_suite 10 [Add_test.other_team_tests; Shift_test.other_team_tests; Sub_test.other_team_tests; Xor_test.other_team_tests] @ timeout_suite 10 ([Sp15_tests.other_team_tests; Sp17_tests.other_team_tests; Sp18_tests.other_team_tests; Sp20_tests.other_team_tests] ) @ (timeout_suite 10 (Studenttests.provided_tests @ Gradedtests.graded_tests)))
(* let suite = ref (timeout_suite 10 [Sp15_tests.other_team_tests]) *)

let exec_tests () =
  let o = run_suite !suite in
  Printf.printf "%s\n" (outcome_to_string o);
  raise Ran_tests

let do_one_file fn =
  let _ = Printf.printf "Processing: %s\n" fn in ()

(* Use the --test option to run unit tests and the quit the program. *)
let argspec = [
  ("--test", Unit exec_tests, "run the test suite, ignoring other inputs");
]

let _ =
  try
    Arg.parse argspec (fun f -> worklist := f :: !worklist)
        "main test harness \n";
    match !worklist with
    | [] -> print_endline "* Nothing to do"
    | _ -> List.iter do_one_file !worklist
  with Ran_tests -> ()
