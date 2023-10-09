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

let aen_tests = 
  [
    ("sort test", fun () ->
      let (~%%) (i, r) = Ind3 (Lit (Int64.of_int i), r) in
      let (~%$) r = Ind2 (r) in
      let sort_test (nums: int list) =
        let count = List.length nums in
        let offset = count * 8 + 8 in
        [
        text "sort" [
          Pushq, [ ~%Rbp ];
          Movq,  [ ~%Rsp; ~%Rbp ];
          Movq,  [ ~%Rdi; ~%%(-40,Rbp) ];
          Movq,  [ ~%Rsi; ~%%(-48,Rbp) ];
          Movq,  [ ~$1; ~%%(-8,Rbp) ];
          Jmp,   [ ~$$".L2" ]
        ];
        text ".L6" [
          Movq,  [ ~$0; ~%%(-16,Rbp) ];
          Jmp,   [ ~$$".L3" ]
        ];
        text ".L5" [
          Movq,  [ ~%%(-16,Rbp); ~%Rax ];
          (* Leaq,  [ 0(,~%Rax,8); ~%Rdx ]; *)
          Imulq, [ ~$8; ~%Rax ];
          Leaq,  [ (~%$Rax); ~%Rdx ];
          Movq,  [ ~%%(-40,Rbp); ~%Rax ];
          Addq,  [ ~%Rdx; ~%Rax ];
          Movq,  [ (~%$Rax); ~%Rdx ];
          Movq,  [ ~%%(-16,Rbp); ~%Rax ];
          Addq,  [ ~$1; ~%Rax ];
          (* Leaq,  [ 0(,~%Rax,8); ~%Rcx ]; *)
          Imulq, [ ~$8; ~%Rax ];
          Leaq,  [ (~%$Rax); ~%Rcx ];
          Movq,  [ ~%%(-40,Rbp); ~%Rax ];
          Addq,  [ ~%Rcx; ~%Rax ];
          Movq,  [ (~%$Rax); ~%Rax ];
          Cmpq,  [ ~%Rax; ~%Rdx ];
          J Le,  [ ~$$".L4" ];
          Movq,  [ ~%%(-16,Rbp); ~%Rax ];
          (* Leaq,  [ 0(,~%Rax,8); ~%Rdx ]; *)
          Imulq, [ ~$8; ~%Rax ];
          Leaq,  [ (~%$Rax); ~%Rdx ];
          Movq,  [ ~%%(-40,Rbp); ~%Rax ];
          Addq,  [ ~%Rdx; ~%Rax ];
          Movq,  [ (~%$Rax); ~%Rax ];
          Movq,  [ ~%Rax; ~%%(-24,Rbp) ];
          Movq,  [ ~%%(-16,Rbp); ~%Rax ];
          (* Leaq,  [ 0(,~%Rax,8); ~%Rdx ]; *)
          Imulq, [ ~$8; ~%Rax ];
          Leaq,  [ (~%$Rax); ~%Rdx ];
          Movq,  [ ~%%(-40,Rbp); ~%Rax ];
          Addq,  [ ~%Rax; ~%Rdx ];
          Movq,  [ ~%%(-16,Rbp); ~%Rax ];
          Addq,  [ ~$1; ~%Rax ];
          (* Leaq,  [ 0(,~%Rax,8); ~%Rcx ]; *)
          Imulq, [ ~$8; ~%Rax ];
          Leaq,  [ (~%$Rax); ~%Rcx ];
          Movq,  [ ~%%(-40,Rbp); ~%Rax ];
          Addq,  [ ~%Rcx; ~%Rax ];
          Movq,  [ (~%$Rax); ~%Rax ];
          Movq,  [ ~%Rax; (~%$Rdx) ];
          Movq,  [ ~%%(-16,Rbp); ~%Rax ];
          Addq,  [ ~$1; ~%Rax ];
          (* Leaq,  [ 0(,~%Rax,8); ~%Rdx ]; *)
          Imulq, [ ~$8; ~%Rax ];
          Leaq,  [ (~%$Rax); ~%Rdx ];
          Movq,  [ ~%%(-40,Rbp); ~%Rax ];
          Addq,  [ ~%Rax; ~%Rdx ];
          Movq,  [ ~%%(-24,Rbp); ~%Rax ];
          Movq,  [ ~%Rax; (~%$Rdx) ]
        ];
        text ".L4" [
          Addq,  [ ~$1; ~%%(-16,Rbp) ]
        ];
        text ".L3" [
          Movq,  [ ~%%(-8,Rbp); ~%Rax ];
          Movq,  [ ~%%(-48,Rbp); ~%Rdx ];
          Subq,  [ ~%Rax; ~%Rdx ];
          Movq,  [ ~%Rdx; ~%Rax ];
          Cmpq,  [ ~%%(-16,Rbp); ~%Rax ];
          J Gt,  [ ~$$".L5" ];
          Addq,  [ ~$1; ~%%(-8,Rbp) ]
        ];
        text ".L2" [
          Movq,  [ ~%%(-8,Rbp); ~%Rax ];
          Cmpq,  [ ~%%(-48,Rbp); ~%Rax ];
          J Lt,  [ ~$$".L6" ];
          Popq,  [ ~%Rbp ];
          Retq,  []
        ];
        text "check" [
          Pushq, [ ~%Rbp ];
          Movq,  [ ~%Rsp; ~%Rbp ];
          Movq,  [ ~%Rdi; ~%%(-24,Rbp) ];
          Movq,  [ ~%Rsi; ~%%(-32,Rbp) ];
          Movq,  [ ~$1; ~%%(-8,Rbp) ];
          Jmp,   [ ~$$".L8" ]
        ];
        text ".L11" [
          Movq,  [ ~%%(-8,Rbp); ~%Rax ];
          Shlq,  [ ~$3; ~%Rax ];
          Leaq,  [ ~%%(-8,Rax); ~%Rdx ];
          Movq,  [ ~%%(-24,Rbp); ~%Rax ];
          Addq,  [ ~%Rdx; ~%Rax ];
          Movq,  [ (~%$Rax); ~%Rdx ];
          Movq,  [ ~%%(-8,Rbp); ~%Rax ];
          (* Leaq,  [ 0(,~%Rax,8); ~%Rcx ]; *)
          Imulq, [ ~$8; ~%Rax ];
          Leaq,  [ (~%$Rax); ~%Rcx ];
          Movq,  [ ~%%(-24,Rbp); ~%Rax ];
          Addq,  [ ~%Rcx; ~%Rax ];
          Movq,  [ (~%$Rax); ~%Rax ];
          Cmpq,  [ ~%Rax; ~%Rdx ];
          J Le,  [ ~$$".L9" ];
          Movq,  [ ~$0; ~%Rax ];
          Jmp,   [ ~$$".L10" ]
        ];
        text ".L9" [
          Addq,  [ ~$1; ~%%(-8,Rbp) ]
        ];
        text ".L8" [
          Movq,  [ ~%%(-8,Rbp); ~%Rax ];
          Cmpq,  [ ~%%(-32,Rbp); ~%Rax ];
          J Lt,  [ ~$$".L11" ];
          Movq,  [ ~$1; ~%Rax ]
        ];
        text ".L10" [
          Popq,  [ ~%Rbp ];
          Retq,  []
        ];
        text "main" ([
          Pushq, [ ~%Rbp ];
          Movq,  [ ~%Rsp; ~%Rbp ];
          Subq,  [ ~$offset; ~%Rsp ] (* Make space for the array *)
        ]
          (* copy array values onto stack *)
          @ (List.mapi (fun i n -> Movq,  [ ~$n; ~%%(-offset + 8*i,Rbp) ] ) nums) @
        [
          Leaq,  [ ~%%(-offset,Rbp); ~%Rax ];
          Movq,  [ ~$count; ~%Rsi ];
          Movq,  [ ~%Rax; ~%Rdi ];
          Callq, [ ~$$"sort" ];
          Leaq,  [ ~%%(-offset,Rbp); ~%Rax ];
          Movq,  [ ~$count; ~%Rsi ];
          Movq,  [ ~%Rax; ~%Rdi ];
          Callq, [ ~$$"check" ];
          (* Movq,  [ ~%%(-96,Rbp); ~%R10 ];
          Movq,  [ ~%%(-88,Rbp); ~%R11 ];
          Movq,  [ ~%%(-80,Rbp); ~%R12 ];
          Movq,  [ ~%%(-72,Rbp); ~%R13 ];
          Movq,  [ ~%%(-64,Rbp); ~%R14 ];
          Movq,  [ ~%%(-56,Rbp); ~%R15 ];
          Movq,  [ ~%%(-48,Rbp); ~%R15 ];
          Movq,  [ ~%%(-40,Rbp); ~%R15 ];
          Movq,  [ ~%%(-32,Rbp); ~%R15 ];
          Movq,  [ ~%%(-24,Rbp); ~%R15 ];
          Movq,  [ ~%%(-16,Rbp); ~%R15 ]; *)
          Movq,  [ ~%Rbp; ~%R12 ]; (* store the base so we can check values later *)
          Movq,  [ ~%Rbp; ~%Rsp ];
          Popq,  [ ~%Rbp ];
          Retq,  []
        ])
      ] in
      let check_sort (input: int list) =
        let m = load (assemble (sort_test input)) in
        if run m <> 1L
        then failwith (Printf.sprintf "Expected sort return code to be 1")
        else (
          let rbp = (Int64.to_int (Int64.sub m.regs.(rind R12) mem_bot)) in
          let count = List.length input in
          let offset = count * 8 + 8 in
          let arr = Array.make count 0L in
          let sbyte = Array.make 8 (Byte '\x00') in
          (for i = 0 to count - 1 do
            Array.blit m.mem (rbp - offset + 8*i) sbyte 0 8;
            arr.(i) <- int64_of_sbytes (Array.to_list sbyte);
          done);
          let sorted = List.map Int64.of_int (List.sort (fun a b -> a - b) input) in
          let ans = Array.to_list arr in
          if sorted = ans then ()
          else failwith (
            Printf.sprintf
              "Resulting array not sorted.\n" ^
              (List.fold_left (fun acc num -> acc ^ Printf.sprintf "%Li " num) "\tExpected\t[ " sorted) ^ " ]\n" ^
              (List.fold_left (fun acc num -> acc ^ Printf.sprintf "%Li " num) "\tGot\t\t[ " ans) ^ " ]"
          )
        )
      in
      check_sort [];
      check_sort [5];
      check_sort [4;-3];
      check_sort [1;2];
      check_sort [25;6;2345;-12;0;-78;734;423;78;423;3;-23;34];
    );
  ]

let akashsub_tests =
  let mod_rec n m = [ text "mod"
                                   [ Subq,  [~$8; ~%Rsp]
                                   ; Cmpq,  [~%Rsi; ~%Rdi]
                                   ; J Lt,  [~$$"exit"]
                                   ; Movq,  [~%Rdi; Ind2 Rsp]
                                   ; Subq,  [~%Rsi; ~%Rdi]
                                   ; Callq, [~$$"mod"]
                                   ; Addq,  [~$8; ~%Rsp]
                                   ; Retq,  []
                                   ]
                            ; text "exit"
                                   [ Movq,  [~%Rdi; ~%Rax]
                                   ; Addq,  [~$8; ~%Rsp]
                                   ; Retq,  [] 
                                   ]
                            ; gtext "main"
                                   [ Movq,  [~$n; ~%Rdi]
                                   ; Movq,  [~$m; ~%Rsi]
                                   ; Callq, [~$$"mod"]
                                   ; Retq,  []
                                   ]
                        ] in

  let fibonacci_sum n = [ data "baz" 
                            [ Quad (Lit 99L)
                            ; Asciz "Hello, world!"
                            ]
  							; text "exit_loop"
                            		[
                            		Retq,	[]
                            		]; text "loop"
                            		[
                            		Cmpq,  [~$0; ~%Rdi]
                            		; J Lt,  [~$$"exit_loop"]
                            		; Pushq,  [~%Rdi]
                            		; Callq,	[~$$"fib"]
                            		; Popq,	[~%Rdi]
                            		; Decq,  [~%Rdi]
                            		; Jmp,   [~$$"loop"]
                            		];
                            
                            		text "fib"
                                   [
                                   Cmpq,  [~$1; ~%Rdi]
                                   ; J Le,  [~$$"exit"]
                                   ; Pushq,  [~%Rdi]
                                   ; Decq,  [~%Rdi]
                                   ; Callq, [~$$"fib"]
                                   ; Popq,	[~%Rdi]
                                   ; Subq,  [~$2; ~%Rdi]
                                   ; Callq, [~$$"fib"]
               						
                                   ; Retq,  []
                                   ]
                            ; text "exit"
                                   [ Addq,  [~%Rdi; ~%Rax]
                                   
                                   ; Retq,  [] 
                                   ]
                            ; gtext "main"
                                   [ Movq,  [~$n; ~%Rdi]
                                   ; Movq,  [~$0; ~%Rax]
                                   ; Callq, [~$$"loop"]
                                   ; Retq,  []
                                   ]
                            
                            
                        ] in

 [
  	 ("mod1", program_test (mod_rec 14 5) 4L);
  	 ("mod2", program_test (mod_rec 20 4) 0L);
  	 ("mod3", program_test (mod_rec 3 5) 3L);
  	 ("fib4", program_test (fibonacci_sum (4)) (7L));
  	 ("fib0", program_test (fibonacci_sum (0)) (0L));
  	 ("fib-1", program_test (fibonacci_sum (-1)) (Int64.neg 0L));

  ]

let andreasx_tests = 
  let euclidean_gcd a b = [ text "gcd"
                                 [ Cmpq,  [~%Rdi; ~%Rsi]
                                 ; J Gt,  [~$$"A smaller"]
                                 ; J Lt,  [~$$"B smaller"]
                                 ; Movq,  [~%Rsi; ~%Rax]
                                 ; Retq,  []
                                 ]
                          ; text "A smaller"
                                 [ Subq,  [~%Rdi; ~%Rsi]
                                 ; Callq, [~$$"gcd"]
                                 ; Retq,  []
                                 ]
                          ; text "B smaller"
                                 [ Subq,  [~%Rsi; ~%Rdi]
                                 ; Callq, [~$$"gcd"]
                                 ; Retq,  []
                                 ]
                          ; gtext "main"
                                 [ Movq,  [~$a; ~%Rdi]
                                 ; Movq,  [~$b; ~%Rsi]
                                 ; Callq, [~$$"gcd"]
                                 ; Retq,  []
                                 ]
                      ] in
  [
    ("gcd 5 5", program_test (euclidean_gcd 5 5) 5L)
    ; ("gcd 5 10", program_test (euclidean_gcd 5 10) 5L)
    ; ("gcd 5 1000", program_test (euclidean_gcd 5 1000) 5L)
    ; ("gcd 35 49", program_test (euclidean_gcd 35 49) 7L)
    ; ("gcd 49 35", program_test (euclidean_gcd 49 35) 7L)
    ; ("gcd 1 5", program_test (euclidean_gcd 1 5) 1L)
    ; ("gcd 17 5", program_test (euclidean_gcd 17 5) 1L)
  ]

let askinsj_tests =
  let fibonacci_rec n = [ text "main"
                            [ Movq, [~$n; ~%Rdi]
                            ; Callq, [~$$"fib"]
                            ; Retq, []
                            ]
                        ; text "fib"
                            [ Cmpq, [~$3; ~%Rdi]
                            ; J Lt, [~$$"complete"]
                            ; Decq, [~%Rdi]
                            ; Subq, [~$8; ~%Rsp]
                            ; Movq, [~%Rdi; Ind2 Rsp]
                            ; Callq, [~$$"fib"]
                            ; Subq, [~$8; ~%Rsp]
                            ; Movq, [~%Rax; Ind2 Rsp]
                            ; Movq, [~%Rsp; ~%R08]
                            ; Addq, [~$8; ~%R08]
                            ; Movq, [Ind2 R08; ~%Rdi]
                            ; Decq, [~%Rdi]
                            ; Callq, [~$$"fib"]
                            ; Addq, [Ind2 Rsp; ~%Rax]
                            ; Addq, [~$16; ~%Rsp]
                            ; Retq, []
                            ]
                        ; text "complete"
                            [ Movq, [~$1; ~%Rax]
                            ; Retq, []
                            ]
                        ] in
  [
    ("fibonacci 1", program_test (fibonacci_rec 2) 1L);
    ("fibonacci 5", program_test (fibonacci_rec 5) 5L);
    ("fibonacci 7", program_test (fibonacci_rec 7) 13L);
  ]

let atter_tests = 
  let bubble_sort_asm = 
    [ 
        text "main" [
            Movq, [~$$"lst"; ~%R08];
            Movq, [~$$"lst"; ~%R09];
            Movq, [~$0; ~%R13];
            Movq, [~$$"lst"; ~%R14];
            Movq, [~$$"lst"; ~%R15];
            Addq, [~$24; ~%R15];
            Addq, [~$8; ~%R09];
        ];
        text "sloop" [
            Cmpq, [Ind2 (R08); Ind2 (R09)];
            J Lt, [~$$"afterswap"];
            Movq, [Ind2 (R09); ~%R10];
            Movq, [Ind2 (R08); Ind2 (R09)];
            Movq, [~%R10; Ind2 (R08)];
        ];
        text "afterswap" [
            Addq, [~$1; ~%R13];
            Cmpq, [~$21; ~%R13];
            J Gt, [~$$"finished"];
            Cmpq, [~%R15; ~%R09];
            J Ge, [~$$"anotherpass"];
            Addq, [~$1; ~%R08];
            Addq, [~$1; ~%R09];
            Jmp, [~$$"sloop"];
        ];
        text "anotherpass" [
            Movq, [~%R14; ~%R08];
            Movq, [~%R14; ~%R09];
            Addq, [~$1; ~%R09];
            Jmp, [~$$"sloop"];  
        ];
        text "finished" [
            Retq, [];
        ];

        data "lst"
        [
            Quad (Lit 3L);
            Quad (Lit 1L);
            Quad (Lit 0L);
        ];

    ] in
  let mem_to_sbyte_list (m:mach) (addr:int) : sbyte list = 
    let rec loop (n:int) (acc:sbyte list) = 
        if n < addr then acc
        else loop (n - 1) (m.mem.(n) :: acc)
    in 
    loop (addr + 7) [] in
  let machine_test (s:string) (n: int) (m: mach) (f:mach -> bool) () =
    for i=1 to n do step m done;
    if (f m) then () else failwith ("expected " ^ s) in
   [
      ("main asm program", machine_test "state" 8 (load (assemble bubble_sort_asm))
        (fun m -> 
            let three = int64_of_sbytes (mem_to_sbyte_list m (25 * 8)) in
            let one = int64_of_sbytes (mem_to_sbyte_list m (26 * 8)) in
            three = 3L &&
            one = 1L)
      );
  ]

let cdf_tests =
  let gcd a b = [ text "main"
    [ Movq, [~$a; ~%R08]
    ; Movq, [~$b; ~%R09]
    ; Movq, [~$a; ~%Rax]
    ]
  ; text "compare"
    [ Cmpq, [~$0; ~%R09]
    ; J Eq, [~$$"exit"]
    ; Movq, [~$0; ~%R10]
    ; Movq, [~%R08; ~%R11]
    ]
  ; text "loop"
    [ Addq, [~%R09; ~%R10]
    ; Cmpq, [~%R10; ~%R08]
    ; J Ge, [~$$"loop"]
    ; Subq, [~%R09; ~%R10]
    ; Subq, [~%R10; ~%R11]
    ; Movq, [~%R09; ~%R08]
    ; Movq, [~%R11; ~%R09]
    ; Movq, [~%R08; ~%Rax]
    ; Jmp, [~$$"compare"]
    ]
  ; text "exit"
    [ Retq, []
    ]
  ] in
   [
    ("gcd_ab_equal", program_test (gcd 6 6) 6L);
    ("gcd_primes", program_test (gcd 17 3) 1L);
    ("gcd_ab_36_6", program_test (gcd 36 6) 6L);
    ("gcd_ab_72_20", program_test (gcd 72 20) 4L);
    ("gcd_ab_38_8", program_test (gcd 38 8) 2L);
    ]

let dhruvd_tests =
  let gcd_solver a b = [ text "loop"
																 [  Cmpq, [~%R09; ~%R08]
																 ;  J Eq, [~$$"exit"]
																 ;		J Lt, [~$$"less_than"]
																 ;		J Gt, [~$$"greater_than"]
																 ;	  Callq, [~$$"loop"]
																 ;		Retq, []
																		]
										; text "exit"
																[ 		Movq, [~%R08; ~%Rax]
																;   Retq, []
																	] 
										; text "less_than"
																[ Subq, [~%R08; ~%R09]
																; Callq, [~$$"loop"]
																;	Retq, []
																	]			
										; text "greater_than"
																[ Subq, [~%R09; ~%R08]
																; Callq, [~$$"loop"]
																;	Retq, []
																	]							
										; text "check_a"
																 [  Cmpq, [~$0; ~%R08]
																	;	J Gt, [~$$"check_b"]
																	; Negq, [~%R08]
																	;	Callq, [~$$"check_b"]
																;	Retq, []
																	]
										; text "check_b"
																	[ Cmpq, [~$0; ~%R09]
																	;	J Gt, [~$$"loop"]
																	; Negq, [~%R09]
																	;	Callq, [~$$"loop"]
																  ;	Retq, []
        														]
										; gtext "main"
																	[ Movq,  [~$a; ~%R08]
																	; Movq, [~$b; ~%R09]
        														; Callq, [~$$"check_a"]
        														; Retq,  []
        														]
									 ] in
  let program_test2 (p:prog) (ans:int64) () =
    let res = assemble p |> load |> run in
    if res <> ans
    then failwith (Printf.sprintf("Expected %Ld but got %Ld") ans res)
    else () in
  [
		("gcd 12 9", program_test2 (gcd_solver 12 9) 3L);
		 ("gcd 25 15", program_test2 (gcd_solver 25 15) 5L)
  ]

let emsu_tests =
  let min_rec n = [ text "min"
  (* 400000 *)      [ Subq,  [~$8; ~%Rsp]
  (* 400008 *)      ; Cmpq,  [~$0; ~%R08]
  (* 400010 *)      ; J Le,  [~$$"base"]
  (* 400018 *)      ; Movq,  [Ind2 R09; Ind2 Rsp]
  (* 400020 *)      ; Addq,  [~$8; ~%R09]
  (* 400028 *)      ; Decq,  [~%R08]
  (* 400030 *)      ; Callq, [~$$"min"]
  (* 400038 *)      ; Cmpq,  [Ind2 Rsp; ~%Rax]
  (* 400040 *)      ; J Gt,  [~$$"update_min"]
  (* 400048 *)      ; Addq,  [~$8; ~%Rsp]
  (* 400050 *)      ; Retq,  []
                    ]
                ; text "base"
                    [ Movq,  [Ind1 (Lbl "nums"); ~%Rax]
                    ; Addq,  [~$8; ~%Rsp]
                    ; Retq,  []
                    ]
                ; text "update_min"
                    [ Movq, [Ind2 Rsp; ~%Rax]
                    ; Addq, [~$8; ~%Rsp]
                    ; Retq, []
                    ]
                ; gtext "main"
                    [ Movq,  [~$n; ~%R08]
                    ; Movq,  [Imm (Lbl "nums"); ~%R09]
                    ; Callq, [~$$"min"]
                    ; Retq,  []
                    ]
                ; data "nums"
                    [ Quad (Lit 99L)
                    ; Quad (Lit 777L)
                    ; Quad (Lit (Int64.neg 5L))
                    ; Quad (Lit 666L)
                    ; Quad (Lit 420L)
                    ]
                ] in
  [
  ("min_5", program_test (min_rec 5) (Int64.neg 5L))
]

let geyerj_tests = 
  let gcd_iter a b = [ text "main"
                                  [ Movq,  [~$1; ~%Rax]
                                  ; Movq,  [~$a; ~%Rdi] (* a in Rdi *)
                                  ; Movq,  [~$b; ~%Rsi] (* b in Rsi *)
                                  ; Jmp,   [~$$"gcd_loop"]
                                  ]
                           ; text "gcd_loop"
                                  [ Cmpq,  [~%Rdi; ~%Rsi] (* Compare a with b *)
                                  ; J Eq,  [~$$"exit"]
                                  ; Cmpq,  [~%Rdi; ~%Rsi]
                                  ; J Gt,  [~$$"a less than b"]
                                  ; Subq,  [~%Rsi; ~%Rdi] (*if a>b, a = a - b*)
                                  ; Jmp,   [~$$"gcd_loop"]
                                  ]
                           ; text "a less than b"
                                  [ Subq,  [~%Rdi; ~%Rsi] (*if b>a, b = b - a *)
                                  ; Jmp,   [~$$"gcd_loop"]
                                  ]
                           ; text "exit"
                                  [ Movq,  [~%Rdi; ~%Rax] (* Want to return a *)
                                  ; Retq,  [] 
                                  ]
                           ] in
  let gcd_mod a b = [ text "main"
                                  [ Movq,  [~$1; ~%Rax]
                                  ; Movq,  [~$a; ~%Rdi] (* a in Rdi *)
                                  ; Movq,  [~$b; ~%Rsi] (* b in Rsi *)
                                  ; Callq, [~$$"gcd_fun"]
                                  ; Retq,  []
                                  ]
                           ; text "mod_function" (* Computes a mod b *)
                                  [ Cmpq,  [~%Rdi; ~%Rsi] (* Compare a with b *)
                                  ; J Gt,  [~$$"mod_exit"] (* a < b so done *)
                                  ; Subq,  [~%Rsi; ~%Rdi] (* else a = a - b *)
                                  ; Jmp,   [~$$"mod_function"]
                                  ]
                           ; text "mod_exit"
                                  [ Movq,  [~%Rdi; ~%Rax] (* Return a *)
                                  ; Retq,  []
                                  ]
                           ; text "gcd_fun" (* gcd a b, a in Rdi, b in Rsi *)
                                  [ Cmpq,  [~$0; ~%Rsi] (* compare b with 0 *)
                                  ; J Eq,  [~$$"exit_gcd"] (*if b=0, return a*)
                                  ; Pushq, [~%Rsi] (* save b on stack *)
                                  ; Callq, [~$$"mod_function"] (*find a mod b*)
                                  ; Movq,  [~%Rax; ~%Rsi] (* set b = a mod b *)
                                  ; Popq,  [~%Rdi] (* Set a = b *)
                                  ; Jmp,   [~$$"gcd_fun"] (* recurse *)
                                  ]
                           ; text "exit_gcd"
                                  [ Movq,  [~%Rdi; ~%Rax] (* Want to return a *)
                                  ; Retq,  [] 
                                  ]
                           ] in
  [
  	("gcd_iter_test_10_5", program_test (gcd_iter 10 5) 5L);
    ("gcd_iter_test_49_14", program_test (gcd_iter 49 14) 7L);
    ("gcd_iter_test_29_31", program_test (gcd_iter 29 31) 1L);
    ("gcd_iter_test_120_320", program_test (gcd_iter 120 320) 40L);

    ("gcd_mod_test_10_5", program_test (gcd_mod 10 5) 5L);
    ("gcd_mod_test_49_14", program_test (gcd_mod 49 14) 7L);
    ("gcd_mod_test_29_31", program_test (gcd_mod 29 31) 1L);
    ("gcd_mod_test_120_320", program_test (gcd_mod 320 120) 40L);
  	
  ]

let mannd_tests = 
  let divide n d =
  let dividend  = ~%Rdi in
  let divisor   = ~%R08 in
  let quotient  = Ind3 (Lit 24L, Rsp) in
  let remainder = Ind3 (Lit 16L, Rsp) in
  let i         = Ind3 (Lit 8L, Rsp) in
  [ text "div"
             [ Cmpq,  [~$0; ~%R08]
             ; J Eq,  [~$$"div_by_0"]
             (* allocate space for quotient, remainder, and i *)
             ; Subq,  [~$32; ~%Rsp]
             ; Movq,  [~$0; quotient]
             ; Movq,  [~$0; remainder]
             ; Movq,  [~$0; i]
             ]
    ; text "loop"
             [ Cmpq,  [~$64; i]
             ; J Ge,  [~$$"exit_loop"] (* if i >= 64, exit loop *)
             ; Shlq,  [~$1; remainder]
             ; Movq,  [dividend; Ind2 Rsp]
             ; Sarq,  [~$63; Ind2 Rsp]
             ; Andq,  [~$1; Ind2 Rsp]
             ; Orq,   [Ind2 Rsp; remainder]
             ; Shlq,  [~$1; quotient]
             ; Cmpq,  [divisor; remainder]
             ; J Lt,  [~$$"merge"]
             ]
      ; text "else"
             [ Orq,   [~$1; quotient]
             ; Subq,  [divisor; remainder]
             ]
      ; text "merge"
             [ Shlq,  [~$1; dividend]
             ; Incq,  [i]
             ; Jmp,   [~$$"loop"]
             ]
      ; text "div_by_0"
             [ Movq,  [~$0; ~%Rax]
             ; Retq,  []
             ]
      ; text "exit_loop"
             [ Movq,  [quotient; ~%Rax]
             ; Addq,  [~$32; ~%Rsp]
             ; Retq,  [] 
             ]
      ; gtext "main"
             [ Movq,  [~$n; dividend]
             ; Movq,  [~$d; divisor]
             ; Callq, [~$$"div"]
             ; Retq,  []
             ]
  ] in
  [
    ("divide 10 5",    program_test (divide 10 5) 2L);
    ("divide 24 8",    program_test (divide 24 8) 3L);
    ("divide 15 0",    program_test (divide 15 0) 0L);
    ("divide 31 10",   program_test (divide 31 10) 3L);
    ("divide 3654 3",  program_test (divide 3654 3) 1218L);
  ]

let petrosky_tests =
  let insertion_sort a b c d e f = [
  data "elts"
    [ Quad (Lit a)    (* User provided array values in data memory *)
    ; Quad (Lit b)
    ; Quad (Lit c)
    ; Quad (Lit d)
    ; Quad (Lit e)
    ; Quad (Lit f) ];
  text "sort"
    [ Leaq, [Ind1 (Lbl "elts"); ~%Rcx]       (* i, set to beginning of array *)
    ; Leaq, [Ind1 (Lbl "elts"); ~%R10]       (* addr of elts *) 
    ; Movq, [~$56; ~%Rbx]                    (* 56 is after the 6th/last elt of A *)
    ; Addq, [~%Rcx; ~%Rbx] ];                (* Rbx is where the sort will end *)
  text "outer"
    [ Addq, [~$8; ~%Rcx]                     (* i++ *)
    ; Cmpq, [~%Rbx; ~%Rcx]                   (* check if i < end *)
    ; J Ge, [~$$"min"]                       (* if i >= end, compute min *)
    ; Movq, [~%Rcx; ~%Rdi] ];                (* j <- i *)
  text "inner"
    [ Subq, [~$8; ~%Rdi]                     (* j-- *)
    ; Cmpq, [~%R10; ~%Rdi]                   (* Compare j and array start *)
    ; J Le, [~$$"outer"]                     (* if j <= start, go to outer *)
    ; Cmpq, [Ind2 Rdi; Ind3 (Lit (-8L),Rdi)] (* Compare A[j] and A[j-1] *)
    ; J Le, [~$$"outer"] ];                  (* if A[j-1] <= A[j], go to outer *)
  text "swap"
    [ Movq, [Ind3 (Lit (-8L),Rdi); ~%R08]    (* temp1 <- A[j-1] *)
    ; Movq, [Ind2 Rdi; ~%R09]                (* temp2 <- A[j] *)
    ; Movq, [~%R08; Ind2 Rdi]                (* A[j] <- temp1 *)
    ; Movq, [~%R09; Ind3 (Lit (-8L),Rdi)]    (* A[j-1] <- temp2 *)
    ; Jmp, [~$$"inner"] ];                   (* Cont. inner loop *)
  text "min"
    [ Movq, [Ind2 R10; ~%Rax]                (* Move the min elt to Raz *)
    ; Retq, [] ];                            (* Return from call to sort *)
  gtext "main"
    [ Callq, [~$$"sort"]                     (* Call the sorting protocol *)
    ; Retq, [] ]                             (* Exit *)
] in

let check_array (m:mach) : bool =
  let data_start = begin match map_addr 4194480L with
                     | Some (i) -> i
                     | None -> failwith "invalid address"
                   end in
  let x1 = int64_of_sbytes (sbyte_list m.mem data_start) in
  let x2 = int64_of_sbytes (sbyte_list m.mem (data_start+8)) in
  let x3 = int64_of_sbytes (sbyte_list m.mem (data_start+16)) in
  let x4 = int64_of_sbytes (sbyte_list m.mem (data_start+24)) in
  let x5 = int64_of_sbytes (sbyte_list m.mem (data_start+32)) in
  let x6 = int64_of_sbytes (sbyte_list m.mem (data_start+40)) in
  x1 <= x2 && x2 <= x3 && x3 <= x4 && x4 <= x5 && x5 <= x6 in

let test_run (m:mach) : mach = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m in

let test_p3_1 () =
  let m = assemble (insertion_sort 7L 2L 3L 1L (-5L) 4L) |> load |> test_run in
  let b = check_array m in
  if b then () else failwith "not properly sorted" in

let test_p3_2 () =
  let m = assemble (insertion_sort (-7L) (-2L) (-3L) 1L (-5L) (-4L)) |> load |> test_run in
  let b = check_array m in
  if b then () else failwith "not properly sorted" in

let test_p3_3 () =
  let m = assemble (insertion_sort 5L 4L 3L 2L 1L 0L) |> load |> test_run in
  let b = check_array m in
  if b then () else failwith "not properly sorted" in

let test_p3_4 () =
  let m = assemble (insertion_sort 0L 1L 2L 3L 4L 5L) |> load |> test_run in
  let b = check_array m in
  if b then () else failwith "not properly sorted" in

  [
    ("insertion_sort min #1", program_test (insertion_sort 1L 2L 3L 4L 5L 6L) 1L);
    ("insertion_sort min #2", program_test (insertion_sort 3L 2L 3L 1L 5L 7L) 1L);
    ("insertion_sort min #3", program_test (insertion_sort 1L 1L 1L 1L 1L 1L) 1L);
    ("insertion_sort min #4", program_test (insertion_sort 6L 5L 4L 3L 2L 1L) 1L);
    ("insertion_sort full sort #1", test_p3_1);
    ("insertion_sort full sort #2", test_p3_2);
    ("insertion_sort full sort #3", test_p3_3);
    ("insertion_sort full sort #4", test_p3_4);
  ]

let sakhavan_tests = 
  let gcd a b = [ text "main"
													[ Movq, [~$a; ~%Rbx]
													; Movq, [~$b; ~%Rcx]
													]
							; text "whileloop"
													[ Cmpq, [~%Rcx; ~%Rbx]
													; J Eq, [~$$"exit"]
													; J Le, [~$$"else"]
													; Subq, [~%Rcx; ~%Rbx]
													; Jmp, [~$$"whileloop"]
													]
							; text "else"
													[ Subq, [~%Rbx; ~%Rcx]
													; Jmp, [~$$"whileloop"]
													]
							; text "exit"
													[ Movq, [~%Rbx; ~%Rax]
													; Retq, []
													]
							] in
  [
		("gcd 12 16", program_test (gcd 12 16) 4L);
  ]

let scaby_tests = 
  let gcd x y = [ text "gcd"
					 [ Cmpq,  [~$0; ~%Rbx] (*y - 0*)
					 ; J Eq,  [~$$"exit"]
					 ; Callq, [~$$"remainder"] 
					 ; Movq,  [~%Rbx; ~%Rax] (*rax = y*)
					 ; Movq,  [~%R08; ~%Rbx] (*rbx = remainder*) 
					 ; Callq, [~$$"gcd"]
					 ; Retq,  []
					 ]
					
			  ; text "remainder" 
					 [ Movq, [~%Rax; ~%R08] (*r08 = x*)
					 ; Movq, [~%Rbx; ~%R09] (*r09 = y*)
					 ; Subq, [~%Rbx; ~%Rax] (*r08 = x - y*)
					 ; Cmpq, [~%Rbx; ~%Rax] (* x - y > y*)
					 ; J Ge, [~$$"remainder"] (* if x-y > y then rec *)
					 ; Retq, [] 
					 ]
			  ; text "exit"
					 [ Movq,  [~$1; ~%Rax]
					 ; Addq,  [~$8; ~%Rsp]
					 ; Retq,  [] 
					 ]
			  ; gtext "main"
					  [ Movq,  [~$x; ~%Rax] (*rax = x*)
					  ; Movq,  [~$y; ~%Rbx] (*rbx = y*)
					  ; Callq, [~$$"gcd"]  
					  ; Retq,  []
					  ] 
			  ] in
  [ 
	("gcd", program_test (gcd 12 4) 4L);
  ]

let wangandr_tests = 
  let recursive_gcd n m = [ text "main"
                                    [ Movq,  [~$0; ~%Rax]
                                    ; Movq,  [~$n; ~%Rbx]
                                    ; Movq,  [~$m; ~%Rcx]
                                    ; Callq, [~$$"gcd"]
                                    ; Retq,  []
                                    ]
                            ; text "gcd"
                                    [ Cmpq,  [~%Rcx; ~%Rbx]
                                    ; J Eq,  [~$$"exit"]
                                    ; J Lt,  [~$$"n_less"]
                                    ]
                            ; text "m_less"
                                    [ Subq,  [~%Rcx; ~%Rbx]
                                    ; Callq, [~$$"gcd"]
                                    ; Retq,  []
                                    ]
                            ; text "n_less"
                                    [ Subq,  [~%Rbx; ~%Rcx]
                                    ; Callq, [~$$"gcd"]
                                    ; Retq,  []
                                    ]
                            ; text "exit"
                                    [ Movq,  [~%Rbx; ~%Rax]
                                    ; Retq,  []
                                    ]
                        ] in
  [
    ("gcd10_5", program_test (recursive_gcd 10 5) 5L);
    ("gcd100_20", program_test (recursive_gcd 100 20) 20L);
    ("gcd20_35", program_test (recursive_gcd 35 20) 5L);
    ("gcd2_5", program_test (recursive_gcd 2 5) 1L);
    ("gcd5000_1", program_test (recursive_gcd 5000 1) 1L);
  ]

let wsun_tests = 
  let factorial_rec n = [ text "fibo"
                                 [ Subq,  [~$8; ~%Rsp]
                                 ; Subq,  [~$2; ~%Rdi]
                                 ; Cmpq,  [~$0; ~%Rdi] 
                                 ; J Lt,  [~$$"exit"] 
                                 ; Addq,  [~%R13; ~%R12] 
                                 ; Addq,  [~%R12; ~%R13] 
                                 ; Callq, [~$$"fibo"]
                                 ]
                          ; text "exit"
                                 [ Andq,  [~$1; ~%Rdi]
                                 ; Cmpq,  [~$0; ~%Rdi]
                                 ; J Eq,  [~$$"exiteven"]
                                 ; Movq,  [~%R13; ~%Rax] 
                                 ; Addq,  [~$8; ~%Rsp] 
                                 ; Retq,  []  
                                 ]
                          ; text "exiteven"
                                 [ Movq,  [~%R12; ~%Rax] 
                                 ; Addq,  [~$8; ~%Rsp] 
                                 ; Retq,  []  
                                 ]
                          ; gtext "main"
                                 [ Movq,  [~$n; ~%Rdi]
                                 ; Movq,  [~$0; ~%R12]
                                 ; Movq,  [~$1; ~%R13]
                                 ; Callq, [~$$"fibo"] 
                                 ; Retq,  [] 
                                 ]
                      ] in
  [
  	("fib0", program_test (factorial_rec 0) 0L);
    ("fib5", program_test (factorial_rec 5) 5L);
    ("fib6", program_test (factorial_rec 6) 8L);
    ("fib7", program_test (factorial_rec 7) 13L);
    ("fib8", program_test (factorial_rec 8) 21L);
    ("fib28", program_test (factorial_rec 28) 317811L);
  ]

let tests = aen_tests 
          @ akashsub_tests
          @ andreasx_tests
          @ askinsj_tests
          (* @ atter_tests *) (* Undefined behavior *)
          (*@ austingw_tests *) (* No test provided *)
          @ cdf_tests
          (* @ danielzh_tests*) (* No test provided *)
          @ dhruvd_tests
          (* @ emsu_tests *) (* Undefined behavior *)
          @ geyerj_tests
          (* @ mannd_tests *) (* Undefined behavior *)
          (* @ petrosky_tests *) (* Undefined behavior *)
          @ sakhavan_tests
          (* @ scaby_tests *) (* Bad Program *)
          (* @ tlarkwor_tests *) (* No test provided *)
          @ wangandr_tests
          @ wsun_tests
