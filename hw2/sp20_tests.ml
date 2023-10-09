open Simulator
open Assert
open X86
open Asm

(* From gradedtests.ml *)
let program_test (p:prog) (ans:int64) () =
  let res = assemble p |> load |> run in
  if res <> ans
  then failwith (Printf.sprintf("Expected %Ld but got %Ld") ans res)
  else ()

let sbyte_list (a: sbyte array) (start: int) : sbyte list =
  Array.to_list (Array.sub a start 8)



(* Student tests *)

let andrewme_tests = 
  let fibonacci_rec n = [

    text "check_base"
      [
        Cmpq, [~$1; ~%Rdi]
      ; J Eq, [~$$"base_0"]
      ; Cmpq, [~$0; ~%Rdi] 
      ; J Neq, [~$$"fib"]
      ; Movq, [~%Rdx; ~%Rax]
      ; Retq, []
      ]
  ; text "base_0"
      [
        Movq, [~%Rsi; ~%Rax]
      ; Retq, []
      ] 
  ; text "fib"
      [  
        Decq, [~%Rdi] (*40 *)
      ; J Eq, [~$$"base"]
      ; Pushq, [~%R12]
      ; Movq, [~%Rsi; ~%R12]
      ; Addq, [~%Rdx; ~%Rsi]
      ; Movq, [~%R12; ~%Rdx]
      ; Popq, [~%R12]
      ; Callq, [~$$"fib"]
      ; Retq, []
      ]
  ; text "base"
      [

        Movq, [~%Rsi; ~%Rax]
      ; Retq, []
      ] 
  ; gtext "main"
      [ Movq,  [~$n; ~%Rdi]
      ; Movq,  [~$1; ~%Rsi]
      ; Movq, [~$0; ~%Rdx]
      ; Callq, [~$$"check_base"]
      ; Retq,  []
      ]

  ] in
  [
    ("fib_rec", program_test (fibonacci_rec 18) 2584L );
    ("fib_rec0", program_test (fibonacci_rec 0) 0L); 
    ("fib_rec1", program_test (fibonacci_rec 1) 1L); 
    ("fib_rec2", program_test (fibonacci_rec 2) 1L); 
    ("fib_rec3", program_test (fibonacci_rec 3) 2L); 
    ("fib_rec4", program_test (fibonacci_rec 4) 3L); 
    ("fib_rec5", program_test (fibonacci_rec 5) 5L);
    ("fib_rec6", program_test (fibonacci_rec 6) 8L); 
    ("fib_rec7", program_test (fibonacci_rec 7) 13L); 
    ("fib_rec8", program_test (fibonacci_rec 8) 21L); 
    ("fib_rec9", program_test (fibonacci_rec 9) 34L); 
    ("fib_rec17", program_test (fibonacci_rec 17) 1597L); 
  ]

let armaant_tests =
  let gcd (a: int) (b: int): prog = [ text "gcd"
                          [ Cmpq,  [~$0; ~%Rbx]
                          ; J Eq, [~$$"exit"] (* if b = 0 exit*)
                          ; Movq,  [~%Rbx; ~%Rcx] (* c = b *)
                          ; Callq, [~$$"mod"] (* a = a mod b *)
                          ; Movq,  [~%Rax; ~%Rbx] (* b = a mod b *)
                          ; Movq,  [~%Rcx; ~%Rax] (* a = b *)
                          ; Callq, [~$$"gcd"] (* recursive call *)
                          ; Retq, []
                          ]
                      ; text "mod" 
                          [ Cmpq,  [~%Rbx; ~%Rax]
                          ; J Ge, [~%Rdx] (* if a > b jump loop *)
                          ; Retq, [] (* if a <= b return a *)
                          ; Subq,  [~%Rbx; ~%Rax] (* loop: a = a - b *)
                          ; Jmp, [~$$"mod"] (* jump to top of while *)
                          ]
                      ; text "exit"
                          [ Retq,  []
                          ]
                      ; gtext "main"
                          [ Movq,  [~$a; ~%Rax]
                          ; Movq,  [~$b; ~%Rbx]
                          ; Movq, [~$$"mod"; ~%Rdx]
                          ; Addq, [~$24; ~%Rdx]
                          ; Callq, [~$$"gcd"]
                          ; Retq,  []
                          ]
                      ] in
  [
    ("gcd0", program_test (gcd 64 4) 4L);
    ("gcd1", program_test (gcd 4 64) 4L);
    ("gcd2", program_test (gcd 382 13) 1L);
    ("gcd3", program_test (gcd 120 80) 40L);
    ("gcd4", program_test (gcd 15 90) 15L);
    ("gcd5", program_test (gcd 108 78) 6L);
  ]

let branlin_tests =
  let fibonacci_rec n = [ text "fib" 
                                [
                                  Cmpq, [~$1; ~%Rdi]
                                  ; J Le, [~$$"basecase"]
                                  ; Subq, [~$1; ~%Rdi]
                                  ; Pushq, [~%Rdi]
                                  ; Callq, [~$$"fib"]
                                  ; Leaq, [Ind2 Rsp; ~%Rdi]
                                  ; Subq, [~$1; ~%Rdi]
                                  ; Pushq, [~%Rax]
                                  ; Callq, [~$$"fib"]
                                  ; Addq,  [Ind2 Rsp; ~%Rax]
                                  ; Popq, [~%R10]
                                  ; Popq, [~%R10]
                                  ; Retq, []
                                ]
                            ; text "basecase"
                                [
                                  Movq, [~%Rdi; ~%Rax]
                                  ; Retq, []
                                ]
                            ; gtext "main"
                                [
                                  Movq, [~$n; ~%Rdi]
                                  ; Callq, [~$$"fib"]
                                  ; Retq, []
                                ]
                                ] in
  [
    ("fib0", program_test (fibonacci_rec 0) 0L);
    ("fib1", program_test (fibonacci_rec 1) 1L);
    ("fib2", program_test (fibonacci_rec 2) 1L);
    ("fib3", program_test (fibonacci_rec 3) 2L);
    ("fib4", program_test (fibonacci_rec 4) 3L);
    ("fib5", program_test (fibonacci_rec 5) 5L);
    ("fib6", program_test (fibonacci_rec 6) 8L);
    ("fib7", program_test (fibonacci_rec 7) 13L);
    ("fib8", program_test (fibonacci_rec 8) 21L);
    ("fib9", program_test (fibonacci_rec 9) 34L);
  ]

let dlike_tests =
  let fibonacci n = [ 
    (*Handle the particular base case when n = 1*)
    text "fib_bc_1"
      [
        Movq, [~$1; ~%Rax]
      ;Jmp, [~$$"exit"]
      ]
  ;text "main"
      [
        Movq, [~$n; ~%R08]
      (*Handle Base cases n= 0 and n = 1*)
      ;Movq, [~$0; ~%Rax]
      ;Cmpq, [~$0; ~%R08]
      ;J Eq, [~$$"exit"]
      ;Cmpq, [~$1; ~%R08]
      ;J Eq, [~$$"fib_bc_1"]
      (*Initialize f(i), f(i - 1), and f(i - 2) for i = 2*)
      ;Movq,  [~$1; ~%Rax]
      ;Movq,  [~$1; ~%R10]
      ;Movq,  [~$0; ~%R09]
      ;Jmp,   [~$$"fib_loop"]
      ]
  ;text "exit"
      [ 
        Retq, []
      ]
  ;text "fib_loop"
      [
        Cmpq, [~$2; ~%R08]
      ;J Le, [~$$"exit"]
      ;Movq, [~%R10; ~%R09]
      ;Movq, [~%Rax; ~%R10]
      ;Addq, [~%R09; ~%Rax]
      ;Subq, [~$1; ~%R08]
      ;Jmp,  [~$$"fib_loop"]
      ]
  ] in
  [
   ("fib(0)", program_test (fibonacci 0) 0L)
  ;("fib(1)", program_test (fibonacci 1) 1L)
  ;("fib(2)", program_test (fibonacci 2) 1L)
  ;("fib(3)", program_test (fibonacci 3) 2L)
  ;("fib(4)", program_test (fibonacci 4) 3L)
  ;("fib(5)", program_test (fibonacci 5) 5L)
  ;("fib(6)", program_test (fibonacci 6) 8L)
  ;("fib(7)", program_test (fibonacci 7) 13L)
  ;("fib(8)", program_test (fibonacci 8) 21L)
  ]

let ghemlick_tests =
let gcd a b = [  text "euclid"
                                [
                                Movq, [~%Rax; ~%Rcx]
                                ; Movq, [~%Rbx; ~%Rdx]
                                ; Callq, [~$$"modulo"]
                                ; Cmpq, [~$0; ~%R08]
                                ; J Eq, [~$$"ret_end"]
                                ; Movq, [~%Rbx; ~%Rax]
                                ; Movq, [~%R08; ~%Rbx]
                                ; Callq, [~$$"euclid"]
                                ]; 

               text "ret_end"
                              [
                                Movq, [~%Rbx; ~%Rax]
                              ; Retq, []
                              ] ;
              gtext "main"
                                 [ Movq,  [~$a; ~%Rax]
                                 ; Movq,  [~$b; ~%Rbx]
                                 ; Callq, [~$$"euclid"]
                                 ; Retq,  []
                                 ];
              text "modulo" 
                            [
                             Callq, [~$$"loopmod"]
                            ; Retq, []
                            ];  

              text "loopmod" 
                            [
                              Cmpq, [~%Rdx; ~%Rcx]
                            ; J Lt, [~$$"setmodulo"]
                            ; Subq, [~%Rdx; ~%Rcx]
                            ; Jmp, [~$$"loopmod"]
                            ];
              text "setmodulo"
                            [
                               Movq, [~%Rcx; ~%R08];
                               Retq, []
                            ]
]
  in
  [
    (* End-to-end Gcd*)
    ("gcd rec end to end", assert_eqf (
        fun () -> gcd 260 192 |> assemble |> load |> run
      ) 4L);
  ]

let gkofman_tests =
  let gcd n m = [ text "main"
                    [ Movq, [~$n; ~%R08]
                    ; Movq, [~$m; ~%R09]
                    ; Movq, [~$$"gcd"; ~%R15]
                    ]
                ; text "gcd"
                    [ Cmpq, [~%R08; ~%R09]
                    ; J Eq, [~$$"exit"]
                    ; J Lt, [~$$"swap"]
                    ; Subq, [~%R08; ~%R09]
                    ; Callq, [~%R15]
                    ; Retq, []
                    ]
                ; text "swap"
                    [ Movq, [~%R08; ~%R10]
                    ; Movq, [~%R09; ~%R08]
                    ; Movq, [~%R10; ~%R09]
                    ; Jmp, [~$$"gcd"]
                    ]
                ; text "exit"
                    [ Movq, [~%R08; ~%Rax]
                    ; Retq, []
                    ]
                ]
  in
  let run_program (p:prog) (ans:int64) : bool =
    let res = assemble p |> load |> run in
    if res <> ans
    then false
    else true
  in
  [
    ("Part III", assert_eqf (fun () -> run_program (gcd 90 72) 18L) true);
  ]

let hpenn_tests =
  let gcd_rec a b = [ text "gcd"
                        [ Cmpq,  [~$0; ~%Rbx]
                        ; J Eq,  [~$$"exit"]
                        ]
                    ; text "loop"
                        [ Subq,  [~%Rbx; ~%Rax]
                        ; Cmpq,  [~%Rbx; ~%Rax]
                        ; J Ge,  [~$$"loop"]
                        ; Movq,  [~%Rax; ~%Rcx]
                        ; Movq,  [~%Rbx; ~%Rax]
                        ; Movq,  [~%Rcx; ~%Rbx]
                        ; Callq, [~$$"gcd"]
                        ]
                    ; text "exit"
                        [ Retq,  []
                        ]
                    ; gtext "main"
                        [ Movq,  [~$a; ~%Rax]
                        ; Movq,  [~$b; ~%Rbx]
                        ; Callq, [~$$"gcd"]
                        ; Retq,  []
                        ]
                    ]
  in
  [
    ("gcd_30_12", program_test (gcd_rec 30 12) 6L);
  ]


let jupierce_tests =
  let fibonacci_rec n = [ text "fib"
                                [ Subq,  [~$8; ~%Rsp]
                                ; Cmpq,  [~$1; ~%Rdi]
                                ; J Le,  [~$$"exit"]
                                ; Decq,  [~%Rdi]            (* n = n-1*)
                                ; Movq,  [~%Rdi; Ind2 Rsp]  (* store n-1 at Rsp *)
                                ; Callq, [~$$"fib"]         (* fib (n-1) *)
                                ; Movq,  [Ind2 Rsp; ~%Rdi]  (* restore n-1 *)
                                ; Movq,  [~%Rax; Ind2 Rsp]  (* store fib (n-1) at rsp-1 and Rsp++ *)
                                ; Decq,  [~%Rdi]            (* n = n-2 *)
                                ; Callq, [~$$"fib"]         (* fib (n-2) *)
                                ; Addq,  [Ind2 Rsp; ~%Rax]  (* fib (n-1) + fib (n-2) *)
                                ; Addq,  [~$8; ~%Rsp]
                                ; Retq,  []
                                ]
                        ; text "exit"
                                [ Cmpq, [~$0; ~%Rdi]
                                ; J Eq, [~$$"exit0"]
                                ; J Gt, [~$$"exit1"]
                                ]
                        ; text "exit0"
                                [ Movq, [~$0; ~%Rax] (* if n == 0, return 0 *)
                                ; Addq, [~$8; ~%Rsp]
                                ; Retq, []
                                ]
                        ; text "exit1"
                                [ Movq, [~$1; ~%Rax] (* if n == 0, return 0 *)
                                ; Addq, [~$8; ~%Rsp]
                                ; Retq, []
                                ]
                        ; gtext "main"
                                [ Movq,  [~$n; ~%Rdi]
                                ; Callq, [~$$"fib"]
                                ; Retq,  []
                                ]
                      ]

  in
  [
    ("fib0", program_test (fibonacci_rec 0) 0L);
    ("fib1", program_test (fibonacci_rec 1) 1L);
    ("fib2", program_test (fibonacci_rec 2) 1L);
    ("fib3", program_test (fibonacci_rec 3) 2L);
    ("fib4", program_test (fibonacci_rec 4) 3L);
    ("fib10", program_test (fibonacci_rec 10) 55L)
  ]

let kocc_tests =
  let gcd_prog : prog = 
	  [ 
		  {
			  lbl = "main"; 
			  global = true; 
			  asm = 
				  Text [ (Pushq, [Imm (Lit exit_addr)]);
							   (Pushq, [Imm (Lit 1L)]);
							   (Pushq, [Imm (Lit 1L)]);
						 	   (Callq, [Imm (Lbl "gcd")]);
						 	   (Addq,  [Imm (Lit 16L); Reg Rsp]);
						 	   (Retq,  [])
				       ]
		  };
		  { 
			  lbl = "gcd"; 
			  global = true; 
			  asm = 
				  Text [ (Pushq, [Reg Rbp]);
							   (Movq,  [Reg Rsp; Reg Rbp]);
							   (Leaq,  [(Ind3 (Lit 24L, Rbp)); Reg R08]);
							   (Leaq,  [(Ind3 (Lit 16L, Rbp)); Reg R09]);
							   (Cmpq,  [Reg R09; Imm (Lit 0L)]);
							   (J Eq,  [Imm (Lbl "exit")]);
							   (Pushq, [Reg R09]);
							   (Jmp,   [Imm (Lbl "loop")])
				 	 	   ]
		  };
		  {
			  lbl = "push";
			  global = true;
			  asm =
				  Text [ (Pushq, [Reg R08]);
							   (Callq, [Imm (Lbl "gcd")]);
							   (Movq,  [Reg Rbp; Reg Rsp]);
							   (Popq,  [Reg Rbp]);
                 (Retq,  [])
				       ]
		  };
		  {
			  lbl = "loop";
			  global = true;
			  asm = 
				  Text [ (Cmpq, [Reg R09; Reg R08]);
							   (J Lt, [Imm (Lbl "push")]);
							   (Subq, [Reg R09; Reg R08]);
							   (Jmp,  [Imm (Lbl "loop")])
				       ]
		  };
		  {
			  lbl = "exit"; 
			  global = true; 
			  asm = 
				  Text [ (Movq, [Reg R08; Reg Rax]);
						 	   (Popq, [Reg Rbp]);
						     (Retq, [])
				       ]
		  }
	  ] in

  let gcd_test (p:prog) (arg1:int64) (arg2:int64) (ans:int64) : unit -> unit =
	  let rec add_args_to_prog (p2:prog) (arg3:int64) (arg4:int64) : prog =	
		  begin match p2 with
		    | { lbl = "main"; 
				    asm = Text [ (Pushq, [Imm (Lit exit_addr)]);
							 			     (Pushq, [Imm (Lit 1L)]);
							 			     (Pushq, [Imm (Lit 1L)]);
						 	 			     (Callq, [Imm (Lbl "gcd")]);
						 	 			     (Addq,  [Imm (Lit 16L); Reg Rsp]);
						 	 			     (Retq,  [])
									     ]; 
				    global = g } :: tl -> 
				  { lbl = "main"; 
					  asm = Text [ (Pushq, [Imm (Lit exit_addr)]);
							 			 	   (Pushq, [Imm (Lit arg1)]);
							 			 	   (Pushq, [Imm (Lit arg2)]);
						 	 			 	   (Callq, [Imm (Lbl "gcd")]);
						 	 			 	   (Addq,  [Imm (Lit 16L); Reg Rsp]);
						 	 			 	   (Retq,  [])
										   ]; 
				    global = g } :: tl
		    | _ -> p2
		  end
	  in
    let new_prog = add_args_to_prog p arg1 arg2 in
    let gcd_works (p2:prog) (ans2:int64) : unit = 
		  let res = assemble p2 |> load |> run in
		  if res <> ans2
  	  then failwith (Printf.sprintf("Expected %Ld but got %Ld") ans res)
 	 	  else ()
	  in
    fun () -> gcd_works new_prog ans

  in
  [("gcd of 1 and 1", gcd_test (gcd_prog) (1L) (1L)
  		(1L));
   ("gcd of 5 and 1", gcd_test (gcd_prog) (5L) (1L)
  		(1L));
   ("gcd of 5 and 5", gcd_test (gcd_prog) (5L) (5L)
  		(5L));
   ("gcd of 18 and 10", gcd_test (gcd_prog) (18L) (10L)
  		(2L));
   ("gcd of 18 and 10", gcd_test (gcd_prog) (18L) (12L)
  		(6L));
  ]

let ksugama_tests =
  let fibby n = [ text "fib"
                    [ Cmpq,  [~$1; ~%Rax]  (* Is RAX greater than 1? *)
                    ; J Le,  [~$$"exit"]
                    ; Pushq, [~%Rax] (* Save a copy of RAX into "y" (int y = n)*)
                    ; Decq,  [~%Rax] (* decrement RAX (n = n-1) *)
                    ; Callq, [~$$"fib"] (* RAX = fib(n-1) *)
                    ; Popq,  [~%R08] (* put "y" into R08 *)
                    ; Pushq, [~%Rax] (* Save a copy of RAX into "z"... i.e: z = fib(n-1) *)
                    ; Movq,  [~%R08; ~%Rax] (* Copy back R08 into RAX (n = y) *)
                    ; Subq,  [~$2; ~%Rax] (* n = n-2 *)
                    ; Callq, [~$$"fib"] (* RAX = fib(n-2) *)
                    ; Popq,  [~%R08]    (* R08 = "z" = fib(n-1) *)
                    ; Addq,  [~%R08; ~%Rax] (* fib(n-1) + fib(n-2) *)
                    ; Retq,  [] (* return fib(n-1) + fib(n-2) *)
                    ]
                ; text "exit" [ Retq,  [] ] (* return n *)
                ; gtext "main"
                    [ Movq,  [~$n; ~%Rax]
                    ; Callq, [~$$"fib"]
                    ; Retq,  []
                    ]
                ]
  in

  (* Stolen from https://github.com/sw9/x86Lite-simulator as a nice test case! *)
  let gcd a b = [ text "main"
                    [ Movq,  [~$0; ~%Rax]
                    ; Movq,  [~$a; ~%Rdi]
                    ; Movq,  [~$b; ~%Rsi]
                    ; Cmpq,  [~$0; ~%Rdi]
                    ; J Lt,  [~$$"fix_Rdi"]
                    ; Cmpq,  [~$0; ~%Rsi]
                    ; J Lt,  [~$$"fix_Rsi"]
                    ]			  
                ; text "loop"
                    [ Cmpq,  [~$0; ~%Rdi]
                    ; J Eq,  [~$$"exit"]
                    ; Cmpq,  [~$0; ~%Rsi]
                    ; J Eq,  [~$$"exit"]
                    ; Cmpq,  [~%Rsi; ~%Rdi]
                    ; J Eq,  [~$$"done"]
                    ; J Lt,  [~$$"lesser"]
                    ; J Gt,  [~$$"greater"]
                    ]
                ; text "fix_Rdi"
                    [ Negq, [~%Rdi] 
                    ; Cmpq,  [~$0; ~%Rsi]
                    ; J Lt,  [~$$"fix_Rsi"]
                    ]
                ; text "fix_Rsi"
                    [ Negq, [~%Rsi]
                    ;	Jmp,   [~$$"loop"]
                    ]
                ; text "greater"
                    [ Subq, [~%Rsi; ~%Rdi] 
                    ;	Jmp,   [~$$"loop"]
                    ]
                ; text "lesser"
                    [ Subq, [~%Rdi; ~%Rsi]
                    ;	Jmp,   [~$$"loop"]
                    ]
                ; text "done"
                    [ Movq,  [~%Rsi; ~%Rax]
                    ; Jmp, [~$$"exit"]
                    ]
                ; text "exit"
                    [ Retq,  [] 
                    ]
                ] 

  in
  [
    ("gcd 3 2", program_test (gcd 3 2) 1L);
    ("gcd 2 2", program_test (gcd 2 2) 2L);
    ("gcd 15 2", program_test (gcd 15 2) 1L);
    ("gcd 15 3", program_test (gcd 15 3) 3L);
    ("gcd 5 1", program_test (gcd 5 1) 1L);

    ("fib 0", program_test (fibby 0) 0L);
    ("fib 1", program_test (fibby 1) 1L);
    ("fib 2", program_test (fibby 2) 1L);
    ("fib 3", program_test (fibby 3) 2L);
    ("fib 4", program_test (fibby 4) 3L);
    ("fib 5", program_test (fibby 5) 5L);
    ("fib 6", program_test (fibby 6) 8L);
    ("fib 7", program_test (fibby 7) 13L);
    ("fib 8", program_test (fibby 8) 21L);
    ("fib 9", program_test (fibby 9) 34L);
    ("fib 10", program_test (fibby 10) 55L);
  ]

let lukasks_tests =
  let fib n = [ text "rec"
                  [ Decq,  [~%Rdi]
                  ; Pushq, [~%Rdi]
                  ; Callq, [~$$"one"]
                  ; Popq,  [~%Rdi]
                  ; Decq,  [~%Rdi]
                  ; Pushq, [~%Rax]
                  ; Callq, [~$$"one"]
                  ; Popq,  [~%R08]
                  ; Addq,  [~%R08; ~%Rax]
                  ; Retq,  []
                  ]
              ; text "one"
                  [ Cmpq,    [~$1; ~%Rdi]
                  ; J Neq, [~$$"two"]
                  ; Movq,  [~$1; ~%Rax]
                  ; Retq,  []
                  ]
              ; text "two"
                  [ Cmpq,    [~$2; ~%Rdi]
                  ; J Neq,   [~$$"rec"]
                  ; Movq,    [~$1; ~%Rax]
                  ; Retq,    []
                  ]
              ; gtext "main"
                  [ Movq,  [~$n; ~%Rdi]
                  ; Callq, [~$$"one"]
                  ; Retq,  []
                  ]
              ]
  in
  [
    ("fib6-iterative", program_test (fib 10) 55L);
  ]

let mksaga_tests =
  let gcd a b = [ text "main"
                                  [ Movq,  [~$a; ~%Rdi]
                                  ; Movq,  [~$b; ~%Rsi]
                                  ]
              ; text "gcd"
                                  [ Cmpq,  [~$0; ~%Rdi]
                                  ; J Eq,  [~$$"ret_b"]
                                  ; Cmpq,  [~$0; ~%Rsi]
                                  ; J Eq,  [~$$"ret_a"]
                                  ; Cmpq,  [~%Rdi; ~%Rsi]
                                  ; J Gt,  [~$$"swap"]
                                  ]
              ; text "mod"
                                  [ Subq,   [~%Rsi; ~%Rdi]
                                  ; Cmpq,  [~%Rdi; ~%Rsi]
                                  ; J Gt,  [~$$"swap"]
                                  ; Jmp,    [~$$"mod"]
                                  ]
              ; text "swap"
                                  [ Movq,  [~%Rdi; ~%R08]
                                  ; Movq,  [~%Rsi; ~%Rdi]
                                  ; Movq,  [~%R08; ~%Rsi]
                                  ; Jmp,   [~$$"gcd"]
                                  ]
                ; text "ret_a"
                                  [ Movq,  [~%Rdi; ~%Rax]
                                  ; Jmp,   [~$$"exit"]
                                  ]
                ; text "ret_b"
                                  [ Movq,  [~%Rsi; ~%Rax]
                                  ; Jmp,   [~$$"exit"]
                                  ]
                ; text "exit"
                                  [ Retq,  [] 
                                  ]
          ]
  in
  [
    ("gcd coprime", program_test (gcd 8 3) 1L);
    ("gcd factor", program_test (gcd 36 3) 3L);
    ("gcd equal", program_test (gcd 9 9) 9L);
    ("gcd a < b", program_test (gcd 12 144) 12L);
  ]

let mreider_tests =
  let is_prime n =  [ text "prime"
         [ Subq,  [~$8; ~%Rsp]

         ; Cmpq,  [~$1; ~%Rdi]
         ; J Le,  [~$$"exit"]

         ; Movq, [~$1; ~%R08]
         ; Movq, [~$1; ~%R09]

         ; Jmp, [~$$"outer_loop"]
         ; Retq, []
         ]

  ; text "outer_loop"
         [ Incq, [~%R08]
         ; Cmpq,  [~%Rdi; ~%R08]
         ; J Ge,  [~$$"success"]
         ; J Lt, [~$$"inner_loop"]
         ; Retq, []
         ]

  ; text "inner_loop"
         [ Incq, [~%R09]
         ; Cmpq,  [~%Rdi; ~%R09]
         ; J Ge,  [~$$"outer_loop"]

         ; Movq, [~%R08; ~%R10]
         ; Imulq, [~%R09; ~%R10]

         ; Cmpq,  [~%Rdi; ~%R10]
         ; J Eq,  [~$$"exit"]
         ; J Neq, [~$$"inner_loop"]
         ; Retq, []
         ]

  ; text "exit"
         [ Movq,  [~$0; ~%Rax]
         ; Addq,  [~$8; ~%Rsp]
         ; Retq,  [] 
         ]

  ; text "success"
         [ Movq,  [~$1; ~%Rax]
         ; Addq,  [~$8; ~%Rsp]
         ; Retq,  [] 
         ]

  ; gtext "main"
         [ Movq,  [~$n; ~%Rdi]
         ; Callq, [~$$"prime"]
         ; Retq,  []
         ]
  ]
  in
  [
    ("prime1", program_test (is_prime 0) 0L);
    ("prime2", program_test (is_prime 1) 0L);
    ("prime3", program_test (is_prime 2) 1L);
    ("prime4", program_test (is_prime (-7)) 0L);
    ("prime5", program_test (is_prime 7753) 1L);
  ]

let nerone_tests =
  let quad_of_list = List.map (fun x -> Quad (Lit (Int64.of_int x))) in
  let merge_sort (l: int list) = [
    text "create_L_arr"
      [ Pushq, [~%R12]
      ; Movq, [Ind2 R12; ~%R12]
      ; Movq, [~%R12; Ind2 R11]
      ; Popq, [~%R12]

      ; Addq, [~$8; ~%R11]
      ; Addq, [~$8; ~%R12]
      ; Incq, [~%R13]

      ; Cmpq, [~%R14; ~%R13]
      ; J Lt, [~$$"create_L_arr"]

      ; Retq, []
      ]

  ; text "create_R_arr"
      [ Pushq, [~%R12]
      ; Movq, [Ind2 R12; ~%R12]
      ; Movq, [~%R12; Ind2 R11]
      ; Popq, [~%R12]

      ; Addq, [~$8; ~%R11]
      ; Addq, [~$8; ~%R12]
      ; Incq, [~%R13]

      ; Cmpq, [~%R15; ~%R13]
      ; J Lt, [~$$"create_R_arr"]

      ; Retq, []
      ]

  ; text "exit_merge_temp_arrays"
      [Retq, []]

  ; text "if1"
      [ Pushq, [~%Rcx]
      ; Pushq, [~%R11]
      ; Pushq, [~%R13]
      ; Pushq, [~%Rdi]

      ; Imulq, [~$8; ~%R11]
      ; Imulq, [~$8; ~%R13]

      ; Addq, [~%R11; ~%Rcx]
      ; Addq, [~%R13; ~%Rdi]

      ; Pushq, [~%Rcx]
      ; Movq, [Ind2 Rcx; ~%Rcx]
      ; Movq, [~%Rcx; Ind2 Rdi]
      ; Popq, [~%Rcx]

      ; Popq, [~%Rdi]
      ; Popq, [~%R13]
      ; Popq, [~%R11]
      ; Popq, [~%Rcx]

      ; Incq, [~%R11]
      ; Incq, [~%R13]
      ; Jmp, [~$$"merge_temp_arrays"]
      ]

  ; text "else1"
      [ Pushq, [~%Rdx]
      ; Pushq, [~%R12]
      ; Pushq, [~%R13]
      ; Pushq, [~%Rdi]

      ; Imulq, [~$8; ~%R12]
      ; Imulq, [~$8; ~%R13]

      ; Addq, [~%R12; ~%Rdx]
      ; Addq, [~%R13; ~%Rdi]

      ; Pushq, [~%Rdx]
      ; Movq, [Ind2 Rdx; ~%Rdx]
      ; Movq, [~%Rdx; Ind2 Rdi]
      ; Popq, [~%Rdx]

      ; Popq, [~%Rdi]
      ; Popq, [~%R13]
      ; Popq, [~%R12]
      ; Popq, [~%Rdx]

      ; Incq, [~%R12]
      ; Incq, [~%R13]
      ; Jmp, [~$$"merge_temp_arrays"]
      ]

  ; text "merge_temp_arrays"
      [ Cmpq, [~%R11; ~%R14]
      ; J Le, [~$$"exit_merge_temp_arrays"]

      ; Cmpq, [~%R12; ~%R15]
      ; J Le, [~$$"exit_merge_temp_arrays"]

      ; Pushq, [~%Rcx]
      ; Pushq, [~%Rdx]
      ; Pushq, [~%R11]
      ; Pushq, [~%R12]

      ; Imulq, [~$8; ~%R11]
      ; Imulq, [~$8; ~%R12]

      ; Addq, [~%R11; ~%Rcx]
      ; Addq, [~%R12; ~%Rdx]

      ; Pushq, [~%Rcx]
      ; Pushq, [~%Rdx]
      ; Movq, [Ind2 Rcx; ~%Rcx]
      ; Movq, [Ind2 Rdx; ~%Rdx]
      ; Cmpq, [~%Rcx; ~%Rdx]
      ; Popq, [~%Rdx]
      ; Popq, [~%Rcx]

      ; Popq, [~%R12]
      ; Popq, [~%R11]
      ; Popq, [~%Rdx]
      ; Popq, [~%Rcx]

      ; J Ge, [~$$"if1"]
      ; J Lt, [~$$"else1"]
      ]

  ; text "exit_remaining"
      [Retq, []]

  ; text "remaining_of_L"
      [ Cmpq, [~%R11; ~%R14]
      ; J Le, [~$$"exit_remaining"]

      ; Pushq, [~%Rdi]
      ; Pushq, [~%Rcx]
      ; Pushq, [~%R13]
      ; Pushq, [~%R11]

      ; Imulq, [~$8; ~%R11]
      ; Imulq, [~$8; ~%R13]

      ; Addq, [~%R13; ~%Rdi]
      ; Addq, [~%R11; ~%Rcx]

      ; Pushq, [~%Rcx]
      ; Movq, [Ind2 Rcx; ~%Rcx]
      ; Movq, [~%Rcx; Ind2 Rdi]
      ; Popq, [~%Rcx]

      ; Popq, [~%R11]
      ; Popq, [~%R13]
      ; Popq, [~%Rcx]
      ; Popq, [~%Rdi]

      ; Incq, [~%R11]
      ; Incq, [~%R13]
      ; Jmp, [~$$"remaining_of_L"]
      ]

  ; text "remaining_of_R"
      [ Cmpq, [~%R12; ~%R15]
      ; J Le, [~$$"exit_remaining"]

      ; Pushq, [~%Rdi]
      ; Pushq, [~%Rdx]
      ; Pushq, [~%R13]
      ; Pushq, [~%R12]

      ; Imulq, [~$8; ~%R12]
      ; Imulq, [~$8; ~%R13]

      ; Addq, [~%R13; ~%Rdi]
      ; Addq, [~%R12; ~%Rdx]

      ; Pushq, [~%Rdx]
      ; Movq, [Ind2 Rdx; ~%Rdx]
      ; Movq, [~%Rdx; Ind2 Rdi]
      ; Popq, [~%Rdx]

      ; Popq, [~%R12]
      ; Popq, [~%R13]
      ; Popq, [~%Rdx]
      ; Popq, [~%Rdi]

      ; Incq, [~%R12]
      ; Incq, [~%R13]
      ; Jmp, [~$$"remaining_of_R"]
      ]

  ; text "merge"
      [ Movq, [~$0; ~%R11] (* i = 0 *)
      ; Movq, [~$0; ~%R12] (* j = 0 *)
      ; Movq, [~$0; ~%R13] (* k = 0 *)
      ; Movq, [~%R10; ~%R14] (* n1 = m *)
      ; Movq, [~%Rcx; ~%R15] (* n2 = r *)

      ; Incq, [~%R14] (* n1 = m + 1 *)
      ; Subq, [~%Rdx; ~%R14] (* n1 = m + 1 - l *)

      ; Subq, [~%R10; ~%R15] (* n2 = r - m *)

      ; Movq, [~%Rsi; ~%R11]
      ; Imulq, [~$8; ~%R11]
      ; Addq, [~%Rdi; ~%R11] (* R11 = addr of array to sort + length of array to sort * 8 *)
      ; Addq, [~%Rdx; ~%R12]
      ; Imulq, [~$8; ~%R12]
      ; Addq, [~%Rdi; ~%R12] (* R12 = addr of array to sort + l * 8 *)
      ; Callq, [~$$"create_L_arr"]
      ; Movq, [~$0; ~%R11] (* i = 0 *)
      ; Movq, [~$0; ~%R12] (* j = 0 *)
      ; Movq, [~$0; ~%R13] (* k = 0 *)

      ; Movq, [~%Rsi; ~%R11]
      ; Addq, [~%R14; ~%R11]
      ; Imulq, [~$8; ~%R11]
      ; Addq, [~%Rdi; ~%R11] (* R11 = addr of array to sort + (length of array to sort + n1) * 8 *)
      ; Movq, [~%R10; ~%R12]
      ; Incq, [~%R12]
      ; Imulq, [~$8; ~%R12]
      ; Addq, [~%Rdi; ~%R12] (* R12 = addr of array to sort + (m + 1) * 8 *)
      ; Callq, [~$$"create_R_arr"]

      ; Movq, [~$0; ~%R11] (* i = 0 *)
      ; Movq, [~$0; ~%R12] (* j = 0 *)
      ; Movq, [~%Rdx; ~%R13] (* k = l *)

      ; Movq, [~%Rsi; ~%Rcx]
      ; Imulq, [~$8; ~%Rcx]
      ; Addq, [~%Rdi; ~%Rcx] (* Rcx = addr of array to sort + length of array to sort * 8 *)

      ; Movq, [~%Rsi; ~%Rdx]
      ; Addq, [~%R14; ~%Rdx]
      ; Imulq, [~$8; ~%Rdx]
      ; Addq, [~%Rdi; ~%Rdx] (* Rdx = addr of array to sort + (length of array to sort + n1) * 8 *)

      ; Callq, [~$$"merge_temp_arrays"]

      ; Callq, [~$$"remaining_of_L"]
      ; Callq, [~$$"remaining_of_R"]

      ; Retq, []
      ]

  ; text "mergesort"
      [ Movq, [~%Rsp; ~%R14]
      ; Addq, [~$8; ~%R14]
      ; Movq, [Ind2 R14; ~%Rcx]

      ; Movq, [~%Rsp; ~%R14]
      ; Addq, [~$16; ~%R14]
      ; Movq, [Ind2 R14; ~%Rdx]

      ; Cmpq, [~%Rdx; ~%Rcx] (* if l >= 0 *)
      ; J Le, [~$$"exit_mergesort"]    (* exit *)

      ; Movq, [~%Rcx; ~%R10] (* m = r *)
      ; Subq, [~%Rdx; ~%R10] (* m = r - l *)

      ; Movq, [~$2; ~%R11]
      ; Movq, [~$0; ~%R12]
      ; Callq, [~$$"divide_by_two"]
      ; Movq, [~%R12; ~%R10] (* m = (r - l) / 2 *)

      ; Addq, [~%Rdx; ~%R10] (* m = l + (r - 1) / 2 *)

      ; Pushq, [~%Rcx]
      ; Pushq, [~%Rdx]
      ; Pushq, [~%R10]
      ; Callq, [~$$"mergesort"] (* mergesort l m *)
      ; Popq, [~%R10]
      ; Popq, [~%Rdx]
      ; Popq, [~%Rcx]

      ; Incq, [~%R10] (* m = m + 1 *)
      ; Pushq, [~%Rdx]
      ; Pushq, [~%R10]
      ; Pushq, [~%Rcx]
      ; Callq, [~$$"mergesort"] (* mergesort m+1 r *)
      ; Popq, [~%Rcx]
      ; Popq, [~%R10]
      ; Decq, [~%R10] (* m = m - 1 *)
      ; Popq, [~%Rdx]

      ; Callq, [~$$"merge"]

      ; Retq, []
      ]

  ; text "divide_by_two"
      [ Incq, [~%R12]
      ; Subq, [~%R11; ~%R10]
      ; Cmpq, [~$0; ~%R10]
      ; J Ge, [~$$"divide_by_two"]
      ; Decq, [~%R12]
      ; Retq, []
      ]

  ; text "main"
      [ Movq, [~$$"array"; ~%Rdi]
      ; Movq, [~$(List.length l); ~%Rsi]

      ; Cmpq, [~$0; ~%Rsi]
      ; J Eq, [~$$"exit_main"]
      ; Cmpq, [~$1; ~%Rsi]
      ; J Eq, [~$$"exit_main"]

      ; Movq, [~$0; ~%Rdx]    (* l *)
      ; Movq, [~%Rsi; ~%Rcx]  (* r = length *)
      ; Decq, [~%Rcx]         (* r = length - 1 *)

      ; Pushq, [~%Rdx]
      ; Pushq, [~%Rcx]
      ; Callq, [~$$"mergesort"]
      ; Jmp, [~$$"exit_main2"]
      ; Retq, []
      ]
  ; text "exit_main"
      [ Movq, [~$$"array"; ~%Rax]
      ; Retq, []
      ]
  ; text "exit_main2"
      [ Movq, [~$$"array"; ~%Rax]
      ; Popq, [~%Rdx]
      ; Popq, [~%Rdx]
      ; Retq, []
      ]
  ; text "exit_mergesort"
      [ Retq, []
      ]
  ; data "array" (quad_of_list l)
  ]
  in

  let mem_to_list (start_addr:int) (length:int) (memory:sbyte array) =
    let quad_list = Array.sub memory start_addr (length * 8) in
    let quad_lists = Array.make length [||] in
    for i=0 to (length - 1) do Array.set quad_lists i (Array.sub quad_list (i * 8) 8) done;
    Array.to_list @@ Array.map (
      fun x ->
        Array.to_list x |> int64_of_sbytes |> Int64.to_int
    ) quad_lists
  in

  let test_merge_sort (to_sort: int list) (expected: int list) () : unit =
    let merge_sort_asm = merge_sort to_sort in
    let loaded = assemble merge_sort_asm |> load in
    let start_sorted_list = run loaded in
    let mem_addr = match map_addr start_sorted_list with
      | Some x -> x
      | None -> failwith "test_merge_sort: address out of range"
    in
    let sorted_list = mem_to_list mem_addr (List.length to_sort) loaded.mem in
    if sorted_list = expected then () else failwith "test_merge_sort: error"

  in
  [
    ("test1", test_merge_sort [] []);
    ("test2", test_merge_sort [1] [1]);
    ("test3", test_merge_sort [1; 2;] [1; 2]);
    ("test3", test_merge_sort [1; 2; 3] [1; 2; 3]);
    ("test4", test_merge_sort [2; 1] [1; 2]);
    ("test3", test_merge_sort [2; 1; 3] [1; 2; 3]);
    ("test3", test_merge_sort [3; 2; 1] [1; 2; 3]);
    ("test3", test_merge_sort [1; 1; 1] [1; 1; 1]);
    ("test3", test_merge_sort [3; 1; 1] [1; 1; 3]);
    ("test3", test_merge_sort [3; 3; 1] [1; 3; 3]);
    ("test5", test_merge_sort [10; 9; 8; 7; 6; 5; 4; 3; 2; 1; 0] [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10]);
  ]


let nshweky_tests =
  let binary_search (x:int64) (l:int64 list) : prog =
    let arr_start = ~%R08 in
    let target = ~%R09 in
    let low = ~%R10 in
    let high = ~%R11 in
    let mid = ~%Rax in
    let pivot_reg = R12 in
    let pivot = ~%pivot_reg in
    [ data "arr_start" @@ List.map (fun x -> Quad (Lit x)) l
    ; data "arr_length" [Quad (Lit (List.length l |> Int64.of_int))]
    ; data "target" [Quad (Lit x)]
    ; text "main"
        [ Leaq,   [Ind1 (Lbl "arr_start"); arr_start]
        ; Movq,   [Ind1 (Lbl "target"); target]
        ; Movq,   [~$0; low]
        ; Movq,   [Ind1 (Lbl "arr_length"); high]
        ; Subq,   [~$1; high]
        ]
    ; text "loop"
        [ Cmpq,   [high; low]
        ; J Gt,   [~$$"fail"]
        ; Movq,   [low; mid]
        ; Addq,   [high; mid]
        ; Sarq,   [~$1; mid]
        ; Movq,   [mid; pivot]
        ; Imulq,  [~$8; pivot]
        ; Movq,   [Ind3 (Lbl "arr_start", pivot_reg); pivot]
        ; Cmpq,   [target; pivot]
        ; J Lt,   [~$$"search_right"]
        ; J Gt,   [~$$"search_left"]
        ; Jmp,    [~$$"end"]
        ]
    ; text "search_right"
        [ Movq,   [mid; low]
        ; Addq,   [~$1; low]
        ; Jmp,    [~$$"loop"]
        ]
    ; text "search_left"
        [ Movq,   [mid; high]
        ; Subq,   [~$1; high]
        ; Jmp,    [~$$"loop"]
        ]
    ; text "fail"
        [ Movq,   [~$(-1); mid]
        ]
    ; text "end"
        [ Retq,   []
        ]
    ]
  in
  [ ( "binary_search 4 [1; 3; 5; 7]"
    , program_test (binary_search 4L [1L; 3L; 5L; 7L]) (-1L)
    )
  ; ( "binary_search 5 [1; 3; 5; 7]"
    , program_test (binary_search 5L [1L; 3L; 5L; 7L]) 2L
    ) ]


let ryansh_tests =
  let helloworld = [ text "foo"
                       [ Xorq, [~%Rax; ~%Rax]
                       ; Movq, [~$100; ~%Rax]
                       ; Retq, []
                       ]
                   ; text "main"
                       [ Xorq, [~%Rax; ~%Rax]
                       ; Movq, [Ind1 (Lbl "baz"); ~%Rax]
                       ; Retq, []
                       ]
                   ; data "baz"
                       [ Quad (Lit 99L)
                       ; Asciz "Hello, world!"
                       ]
                   ]
  in

  let leaq_prog: prog = [
    (text "main"
       [
         (* Leaq, [Ind1 (Lbl "num_items"); ~%Rdi];
            Movq, [Ind2 Rdi ; ~%Rax]; *)
         Movq, [Ind1 (Lbl "num_items");  ~%Rax];
         Retq, []
       ])
    ;
    (data "num_items"
       [Quad (Lit 5L)])
  ]
  in

  let int_to_data (i: int) : data =
    Quad (Lit (Int64.of_int i))
  in

  let knapsack_prog (capacity: int) (item_values: int list) (item_weights: int list): prog = [
    (text "main"
       [
         Movq, [Ind1 (Lbl "num_items");  ~%Rdi];
         Subq, [Imm (Lit 1L); ~%Rdi]; (*Rdi = num_items - 1*)
         Leaq, [Ind1 (Lbl "item_values"); ~%Rdx];
         Leaq, [Ind1 (Lbl "item_weights"); ~%Rcx];
         Movq, [Ind1 (Lbl "knapsack_capacity");  ~%Rsi];
         Callq, [Imm (Lbl "solver")];
         Retq, []
       ])
    ;
    (text "solver"
       [
         Pushq, [~%Rsi]; (*Push knapsack_capacity to stack*)
         Pushq, [~%Rdi]; (*Push item_num to stack*)
         Subq, [Imm (Lit 24L); ~%Rsp]; (*Make room for val_with and val_without and cap-weight*)
         Cmpq, [Imm (Lit 0L); Ind3 ((Lit 24L), Rsp)];
         J Eq, [Imm (Lbl "cap_weight_compare")];(* if item_num == 0*)

         Leaq, [Ind1 (Lbl "item_weights"); ~%R10];
         (*NOTE: mult*)
         Movq, [~%Rdi; ~%R12];
         Imulq, [Imm (Lit 8L); ~%R12];
         Addq, [~%R12; ~%R10]; (*R10 points to weights[i]*)

         Subq, [Ind2 R10; ~%Rsi]; (*Rsi = cap - weight[i]*)
         Movq, [~%Rsi; Ind2 Rsp]; (*Put it into its stack slot*)


         Subq, [Imm (Lit 1L); ~%Rdi]; (*Rdi = i - 1*)
         Callq, [Imm (Lbl "solver")]; (*Rax = solver(i -1, cap -weight[i], val, weights)*)

         Movq, [~%Rax; Ind3 ((Lit 16L), Rsp)]; (*val_with = solver(i -1, cap -weight[i], val, weights)*)
         Leaq, [Ind1 (Lbl "item_values"); ~%R10];
         (*NOTE: mult*)
         Movq, [Ind3 ((Lit 24L), Rsp); ~%R12]; (*R12 = item_num*)
         Imulq, [Imm (Lit 8L); ~%R12]; (*R12 = item_num * 8*)
         Addq, [~%R12; ~%R10]; (*R10 points to values[i]*)
         Movq, [Ind2 R10; ~%R11]; (*R11 = values[i]*)
         Addq, [~%R11; Ind3 ((Lit 16L), Rsp)]; (*val_with = values[i] + solver of previous*)


         Movq, [Ind3 ((Lit 24L), Rsp); ~%Rdi];
         Subq, [Imm (Lit 1L); ~%Rdi]; (*Rdi = i -1*)
         Movq, [Ind3 ((Lit 32L), Rsp); ~%Rsi]; (*Rsi = cap*)
         Callq, [Imm (Lbl "solver")]; (*Rax = val_without*)

         Cmpq, [Imm (Lit 0L); Ind2 Rsp]; (*if cap-weight < 0*)
         J Lt, [Imm (Lbl "ret_val_without")];
         Cmpq, [Ind3 ((Lit 16L), Rsp); ~%Rax];
         J Lt, [Imm (Lbl "ret_val_with")];
       ])
    ;
    (text "ret_val_without"
       [
         Addq, [Imm (Lit 40L); ~%Rsp];
         Retq, [] (*Return value without, since already in Rax*)
       ])
    ;
    (text "cap_weight_compare"
       [
         Leaq, [Ind1 (Lbl "item_weights"); ~%R09];
         (*NOTE: Mul*)
         Movq, [~%Rdi; ~%R12];
         Imulq, [Imm (Lit 8L); ~%R12];
         Addq, [~%R12; ~%R09]; (*R09 points to weights[i]*)


         Cmpq, [Ind2 R09; ~%Rsi]; (*if cap < weight*)
         J Lt, [Imm (Lbl "ret_zero")];
         Leaq, [Ind1 (Lbl "item_values"); ~%R09];
         (*NOTE: Mul*)
         Movq, [~%Rdi; ~%R12];
         Imulq, [Imm (Lit 8L); ~%R12];
         Addq, [~%R12; ~%R09]; (*R09 points to values[i]*)

         Movq, [Ind2 R09; ~%Rax]; (*Return value[i]*)
         Addq, [Imm (Lit 40L); ~%Rsp];
         Retq, []
       ])
    ;
    (text "ret_val_with"
       [
         Movq, [Ind3 ((Lit 16L), Rsp); ~%Rax];
         Addq, [Imm (Lit 40L); ~%Rsp];
         Retq, []
       ])
    ;
    (text "ret_zero"
       [
         Movq, [Imm (Lit 0L); ~%Rax];
         Addq, [Imm (Lit 40L); ~%Rsp];
         Retq, []
       ])
    ;
    (data "num_items"
       [
         int_to_data (List.length item_values)
       ])
    ;
    (data "knapsack_capacity"
       [
         int_to_data capacity
       ])
    ;
    (data "item_weights" (List.map int_to_data item_weights)
    )
    ;
    (data "item_values" (List.map int_to_data item_values)
    )
  ] in


  let cap1 = 10 in
  let values1 = [4; 2; 7] in
  let weights1 = [2; 2; 9] in
  let ans1 = 7L in

  let cap2 = 10 in
  let values2 = [4; 2; 5] in
  let weights2 = [2; 2; 9] in
  let ans2 = 6L in
  [
    ("knapsack_prog_case1", program_test (knapsack_prog cap1 values1 weights1) ans1) ;
    ("knapsack_prog_case2", program_test (knapsack_prog cap2 values2 weights2) ans2)
  ]

let tianwen_tests =
  let linked_list_find n = [
  (*
  struct linked_list{ (16bytes)
    int64_t value; +0 bytes
    struct linked_list *next; +8 bytes
  } 
  *)
    text "find_next" [ (* int find_next(struct linked_list *list, int64_t value) *)
      Cmpq, [Ind2 Rdi; ~%Rsi]; (* if(list->value == value) *)
      J Neq, [~$$"else_find_next"];
      Movq, [Ind3 (Lit 8L, Rdi); ~%Rax];
      Movq, [Ind2 Rax; ~%Rax]; (* return list->next->value; *)
      Retq, []
    ];
    text "else_find_next" [
      Movq, [Ind3 (Lit 8L, Rdi); ~%Rdi];
      Callq, [~$$"find_next"];
      Retq, [](* else return find_next(list->next, value); *)
    ];
    data "node1" [
      Quad (Lit 170L);
      Quad (Lbl "node2")
    ];
    data "node4" [
      Quad (Lit 290L);
      Quad (Lit 0L); (* NULL *)
    ];
    data "node2" [
      Quad (Lit 235L);
      Quad (Lbl "node3");
    ];
    data "node3" [
      Quad (Lit 233L);
      Quad (Lbl "node4");
    ];
    gtext "main" [
      Movq, [~$$"node1"; ~%Rdi];
      Movq, [~$n; ~%Rsi];
      Callq, [~$$"find_next"]; (* find_next(node1, n); *)
      Retq, [];
    ];
  ]
  in

  (* a simple implementation of the extended Euclidean Algorithm *)
  (* please see https://paste.ubuntu.com/p/bcCZYqCvqn/ for the C code *)
  (* and https://paste.ubuntu.com/p/ZM4s2hQt74/ for the assembly code with comments *)
  let exgcd x y = [
    text "mod"[
      Cmpq, [~%Rsi; ~%Rdi];
      J Lt, [~$$"mod_exit"];
      Subq, [~%Rsi; ~%Rdi];
      Jmp, [~$$"mod"];
    ];
    text "mod_exit"[
      Movq, [~%Rdi; ~%Rax];
      Retq, [];
    ];
    text "div"[
      Xorq, [~%Rax; ~%Rax];
    ];
    text "div_while" [
      Cmpq,  [~%Rsi; ~%Rdi];
      J Lt, [~$$"div_exit"];
      Subq, [~%Rsi; ~%Rdi];
      Incq, [~%Rax];
      Jmp, [~$$"div_while"];
    ];
    text "div_exit"[
      Retq, [];
    ];

    text "exgcd"[
      Cmpq, [~%Rsi; ~$0];
      J Neq, [~$$"exgcd_2"];
      Movq, [~$1; Ind2 Rdx];
      Movq, [~$0; Ind2 Rcx];
      Movq, [~%Rdi; ~%Rax];
      Retq, [];
    ];
    text "exgcd_2"[
      Pushq, [~%Rdi];
      Pushq, [~%Rsi];
      Callq, [~$$"mod"]; 
      Movq, [~%Rax; ~%Rsi];
      Movq, [Ind2 Rsp; ~%Rdi];
      Callq, [~$$"exgcd"]; 
      Popq, [~%Rsi];
      Popq, [~%Rdi];
      Movq, [Ind2 Rdx; ~%R10];
      Movq, [Ind2 Rcx; Ind2 Rdx];
      Pushq, [~%Rax];
      Callq, [~$$"div"]; 
      Imulq, [Ind2 Rcx; ~%Rax];
      Subq, [~%Rax; ~%R10];
      Movq, [~%R10; Ind2 Rcx];
      Popq, [~%Rax];
      Retq, [];
    ];

    text "main"[
      Movq, [~$x; ~%Rdi];
      Movq, [~$y; ~%Rsi];
      Shlq, [Imm (Lit 4L); ~%Rsi];
      Leaq, [Ind1 (Lbl "vars"); ~%Rdx];
      Leaq, [Ind3 (Lit 8L, Rdx); ~%Rcx];
      Callq, [~$$"exgcd"];
      Addq, [Ind2 Rcx; ~%Rax];
      Addq, [Ind1 (Lbl "vars"); ~%Rax];
      Retq, [];
    ];
    data "vars" [ 
      Quad (Lit 0L);
      Quad (Lit 0L);
    ]
  ]

  in
  [
    ("linked_list_find", program_test (linked_list_find 233) 290L);
    ("exgcd", program_test (exgcd 20790 99) 186L)
  ]


let wangwill_tests =
  let gcd m n = [
    text "gcd" [
      Cmpq, [~%Rsi; ~%Rdi];
      J Gt, [~$$"gcd_ordered"];
      J Eq, [~$$"gcd_base"];
      Xorq, [~%Rdi; ~%Rsi];
      Xorq, [~%Rsi; ~%Rdi];
      Xorq, [~%Rdi; ~%Rsi];
    ];
    (* At this point, ~$Rdi > ~$Rsi *)
    text "gcd_ordered" [
      Subq, [~%Rsi; ~%Rdi];
      Callq, [~$$"gcd"];
      Retq, []
    ];
    text "gcd_base" [
      Movq, [~%Rdi; ~%Rax];
      Retq, []
    ];
    gtext "main" [
      Movq, [~$m; ~%Rdi];
      Movq, [~$n; ~%Rsi];
      Cmpq, [~$0; ~%Rdi];
      J Le, [~$$"error"];
      Cmpq, [~$0; ~%Rsi];
      J Le, [~$$"error"];
      Callq, [~$$"gcd"];
      Retq, []
    ];
    gtext "error" [
      Movq, [~$(-1); ~%Rax];
      Retq, []
    ]
  ]
  in

  let test_gcd m n expected : unit -> unit =
    program_test (gcd m n) expected

  in
  [
    ("gcd1", test_gcd 6 12 6L);
    ("gcd2", test_gcd 101 4999 1L);
    ("gcd3", test_gcd 500 500 500L);
    ("gcd4", test_gcd 12 18 6L);
    ("gcd5", test_gcd (-2) 11 (-1L));
    ("gcd6", test_gcd 59 (-5) (-1L));
  ]

let yxeng_tests =
  let gcd a b = [ text "gcd"
                  [ 
                    Pushq, [~%Rbp]
                  ; Movq, [~%Rsp; ~%Rbp]
                  ; Cmpq, [~%Rsi; ~$0]
                  ; J Eq, [~$$"iftrue"]
                  ; Pushq, [~%Rsi]
                  ; Callq, [~$$"mod"]
                  ; Movq, [~%Rax; ~%Rsi]
                  ; Popq, [~%Rdi]
                  ; Callq, [~$$"gcd"]
                  ; Popq, [~%Rbp]
                  ; Retq, []
                  ]

              ; text "iftrue" 
                  [
                    Movq, [~%Rdi; ~%Rax]
                  ; Popq, [~%Rbp]
                  ; Retq, []
                  ] 

              ; gtext "main" 
                  [ 
                    Movq, [Ind1 (Lbl "params"); ~%Rdi]
                  ; Leaq, [Ind1 (Lbl "params"); ~%R12]
                  ; Movq, [Ind3 (Lit 8L, R12); ~%Rsi]
                  ; Callq, [~$$"gcd"]
                  ; Retq, []
                  ]

              ; text "mod"
                  [
                    Pushq, [~%Rbp]
                  ; Movq, [~%Rsp; ~%Rbp]
                  ]

              ; text "mod_body"
                  [
                    Cmpq, [~%Rsi; ~%Rdi]
                  ; J Lt, [~$$"mod_ret"]
                  ; Subq, [~%Rsi; ~%Rdi]
                  ; Jmp, [~$$"mod_body"]
                  ]

              ; text "mod_ret"
                  [
                    Movq, [~%Rdi; ~%Rax]
                  ; Popq, [~%Rbp]
                  ; Retq, []
                  ]

              ; data "params" 
                  [ Quad (Lit a)
                  ; Quad (Lit b)
                  ]
              ]
  in
  [
    ("gcd(10, 5)", program_test (gcd 10L 5L) 5L);
    ("gcd(16, 10)",program_test (gcd 16L 10L) 2L);
    ("gcd(10, 1)", program_test (gcd 10L 1L) 1L);
    ("gcd(11571, 1767", program_test (gcd 11571L 1767L) 57L)
  ]

let tests = andrewme_tests
          @ armaant_tests
          (* @ branlin_tests *) (* Test cases fail *)
          @ dlike_tests
          @ ghemlick_tests
          @ gkofman_tests
          @ hpenn_tests
          @ jupierce_tests
          (* @ kocc_tests *) (* Test cases fail *)
          @ ksugama_tests
          @ lukasks_tests
          @ mksaga_tests
          @ mreider_tests
          @ nerone_tests
          @ nshweky_tests
          @ ryansh_tests
          (* @ tianwen_tests *) (* Undefined behavior 1/2 tests *)
          @ wangwill_tests
          @ yxeng_tests
