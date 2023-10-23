open X86
open Simulator
open Gradedtests

let should_not_step (m:mach) () =
    try ignore (step m);
        failwith "Should not step (Wrong register / memory accesses)"
    with
        | Failure a -> if String.equal a "Should not step (Wrong register / memory accesses)" then failwith a else ()
        | x -> failwith (Printexc.to_string x)


let invalid_tests = [
    ("invalid_shift_1", should_not_step (test_machine [InsB0 (Shrq, [Reg Rax; Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_2", should_not_step (test_machine [InsB0 (Shrq, [Reg Rax; Reg R08]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_3", should_not_step (test_machine [InsB0 (Shrq, [Reg Rax; Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_4", should_not_step (test_machine [InsB0 (Shlq, [Reg Rax; Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_5", should_not_step (test_machine [InsB0 (Shlq, [Reg Rax; Reg R08]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_6", should_not_step (test_machine [InsB0 (Shlq, [Reg Rax; Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_7", should_not_step (test_machine [InsB0 (Sarq, [Reg Rax; Reg Rbx]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_8", should_not_step (test_machine [InsB0 (Sarq, [Reg Rax; Reg R08]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_shift_9", should_not_step (test_machine [InsB0 (Sarq, [Reg Rax; Ind2 (Rax)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    
    ("invalid_ops_1", should_not_step (test_machine [InsB0 (Addq, [Ind2 (Rax); Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_ops_2", should_not_step (test_machine [InsB0 (Subq, [Ind2 (Rax); Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_ops_3", should_not_step (test_machine [InsB0 (Addq, [Ind2 (Rax); Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_ops_4", should_not_step (test_machine [InsB0 (Xorq, [Ind2 (Rax); Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_ops_5", should_not_step (test_machine [InsB0 (Orq, [Ind2 (Rax); Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_ops_6", should_not_step (test_machine [InsB0 (Imulq, [Ind2 (Rax); Ind1 (Lit 0L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_ops_7", should_not_step (test_machine [InsB0 (Imulq, [Reg Rax; Ind2 Rax]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
    ("invalid_ops_8", should_not_step (test_machine [InsB0 (Imulq, [Imm (Lit 1L); Imm (Lit 2L)]);InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]));
]
