open Simulator
open Assert
open X86
open Asm

(* copied from gradedtests.ml *)
let program_test (p:prog) (ans:int64) () =
  let res = assemble p |> load |> run in
  if res <> ans
  then failwith (Printf.sprintf("Expected %Ld but got %Ld") ans res)
  else ()

(* Begin student tests *)
let alexpe_tests =
  (* m is stored in R08
     n is stored in R09 *)
  let ack m n =
    [ text "ack"
      [ Cmpq,  [~%R08; ~$0]
      ; J Eq,  [~$$"m_0"]
      ; Cmpq,  [~%R09; ~$0]
      ; J Eq,  [~$$"n_0"]
      ; Pushq, [~%R08]
      ; Decq,  [~%R09]
      ; Callq, [~$$"ack"]
      ; Movq,  [~%Rax; ~%R09]
      ; Popq,  [~%R08]
      ; Decq,  [~%R08]
      ; Callq, [~$$"ack"]
      ; Retq,  []
      ]
    ; text "m_0"
      [ Incq,  [~%R09]
      ; Movq,  [~%R09; ~%Rax]
      ; Retq,  []
      ]
    ; text "n_0"
      [ Decq,  [~%R08]
      ; Incq,  [~%R09]
      ; Callq, [~$$"ack"]
      ; Retq,  []
      ]
    ; text "main"
      [ Movq,  [~$m; ~%R08]
      ; Movq,  [~$n; ~%R09]
      ; Callq, [~$$"ack"]
      ; Retq,  []
      ]
    ]
  in

  [ ("ack_0_0", program_test (ack 0 0) 1L);
    ("ack_1_1", program_test (ack 1 1) 3L);
    ("ack_2_2", program_test (ack 2 2) 7L);
    ("ack_3_3", program_test (ack 3 3) 61L);
    ("ack_3_1", program_test (ack 3 1) 13L);
    ("ack_3_4", program_test (ack 3 4) 125L);
    ("ack_2_5", program_test (ack 2 5) 13L);
    ("ack_4_0", program_test (ack 4 0) 13L);
    ("ack_3_5", program_test (ack 3 5) 253L);
  ]

(* * *)

let apoth_tests =
  let binary_search x lo hi =
    [ text "search"
        [ Cmpq, [~%R09; ~%R10] 
        ; J Lt, [~$$"not_found"]
        ; Movq, [~%R10; ~%R11]
        ; Addq, [~%R09; ~%R11]
        ; Sarq, [~$1; ~%R11]
        ; Movq, [Ind2 R11; ~%Rax]
        ; Cmpq, [~%R08; ~%Rax]
        ; J Eq, [~$$"found"]
        ; J Lt, [~$$"rec_right"]
        ]
    ; text "rec_left"
        [ Movq, [~%R11; ~%R10]
        ; Callq, [~$$"search"]
        ; Retq, []
        ]
    ; text "rec_right"
        [ Movq, [~%R11; ~%R09]
        ; Callq, [~$$"search"]
        ; Retq, []
        ]
    ; text "not_found"
        [ Movq, [~$(-1); ~%Rax]
        ; Retq, []
        ]
    ; text "found"
        [  Retq, []
        ]
    ; text "main"
        [ Movq, [~$x; ~%R08]
        ; Movq, [~$lo; ~%R09]
        ; Movq, [~$hi; ~%R10]
        ; Callq, [~$$"search"]
        ; Retq, []
        ]
    ;	data "contains3"
	[ Quad (Lit 1L)
	; Quad (Lit 2L)
	; Quad (Lit 3L)
	; Quad (Lit 4L)
	; Quad (Lit 5L)
	; Quad (Lit 6L)
	; Quad (Lit 7L)
	; Quad (Lit 8L)
	]
    ; data "notcontains3"						
        [ Quad (Lit 1L)
        ; Quad (Lit 2L)
        ; Quad (Lit 4L)
        ; Quad (Lit 6L)
        ; Quad (Lit 8L)
        ; Quad (Lit 10L)
        ; Quad (Lit 12L)
        ; Quad (Lit 14L)
        ]
    ]
  in

  [ ("binary_search", program_test (binary_search 3 0x4000B8 0x4000D8) 3L);
  ]

(* * *)

let burowski_tests =
  let reverse a = 
    [ text "main"
      [ Movq,  [~$a; ~%R08] (* number *)
      ; Movq,  [~$0; ~%R09] (* accumulated *)
      ; Callq, [~$$"reverse"]
      ; Retq,  []
      ]
    ; text "reverse"
      [ Cmpq,  [~$0; ~%R08] 
      ; J Eq,  [~$$"return"]
      ; Movq,  [~$0; ~%R11] (* R11 is counter *)
      ; Movq,  [~%R08; ~%R12]
      ; Callq, [~$$"divide_by_10"] 
      ; Movq,  [~%R08; ~%R10]
      ; Callq, [~$$"mod_10"] 
      ; Imulq, [~$10; ~%R09] (* multiplies acc by 10 *)
      ; Addq,  [~%R10; ~%R09]
      ; Movq,  [~%R12; ~%R08]
      ; Jmp,   [~$$"reverse"]
      ]
    ; text "divide_by_10"     (* divides R08 by 10, puts it R11*)
      [ Cmpq,  [~$10; ~%R12]
      ; J Lt,  [~$$"div_ret"]
      ; Subq,  [~$10; ~%R12]
      ; Addq,  [~$1; ~%R11]
      ; Jmp,   [~$$"divide_by_10"]
      ]
    ; text "mod_10"            (* stores R08 % 10 in R10 *)
      [ Cmpq,  [~$10; ~%R10]
      ; J Lt,  [~$$"mod_ret"]
      ; Subq,  [~$10; ~%R10]
      ; Jmp,   [~$$"mod_10"]
      ]
    ; text "div_ret"
      [ Movq,  [~%R11; ~%R12]
      ; Retq,  []
      ]
    ; text "mod_ret"
      [ Retq,  []
      ]
    ; text "return"
      [ Movq,  [~%R09; ~%Rax]
      ; Retq,  []
      ]
    ]
  in

  [ ("12", program_test (reverse 12) 21L);
    ("12345", program_test (reverse 12345) 54321L);
    ("222", program_test (reverse 222) 222L);
    ("9", program_test (reverse 9) 9L);
    ("17471", program_test (reverse 17471) 17471L);
    ("bigger number", program_test 
      (reverse 256367) 763652L);
    (* should not work for negatives! *)
    ("keep negs the same", program_test (reverse (-19)) (-19L)); 
  ]

(* * *)

(*
  [FAIL] Our solution is getting the following:

  Sorting 1L, 4L, 3L, 0L, 2L: failed - operand_addr: non-indirect operand
  Sorting empty list: failed - operand_addr: non-indirect operand
  Sorting a single number: failed - operand_addr: non-indirect operand
  Sorting repeated numbers: failed - operand_addr: non-indirect operand
  Sorting sorting numbers in reverse: failed - operand_addr: non-indirect operand
  Sorting sorting negative numbers: failed - operand_addr: non-indirect operand
  Sorting sorting large numbers: failed - operand_addr: non-indirect operand
*)

(*

let chmart_tests =
  let bubble_sort (nums : int64 list) = 
  let len = List.length nums in
    [ text "main"
      [ Callq, [~$$"bubble_sort"]
      ; Retq, []
      ]
    ; text "bubble_sort"
      [ Leaq, [~$$"data"; ~%Rbx]
      ; Movq, [~$len; ~%Rcx]
      ; Movq, [~$0; ~%Rax]
      ; Jmp, [~$$"outer_loop"]
      ]
    ; text "outer_loop"
      [ Cmpq, [~$1; ~%Rcx]
      ; J Le, [~$$"end"]
      ; Movq, [Ind2 Rbx; ~%R08]
      ; Movq, [Ind3 (Lit (8L), Rbx) ; ~%R09]
      ; Jmp, [~$$"inner_loop"]
      ]
    ; text "inner_loop"
      [ Cmpq, [~%R09; ~%R08]
      ; J Gt, [~$$"swap"]
      ; Decq, [~%Rcx]
      ; Addq, [~$8; ~%Rbx] 
      ; Jmp, [~$$"outer_loop"]
      ] 
    ; text "swap"
      [ Movq, [~$1; ~%Rax]
      ; Movq, [~%R09; Ind2 Rbx]
      ; Movq, [~%R08; Ind3 ((Lit (8L), Rbx))]
      ; Decq, [~%Rcx]
      ; Addq, [~$8; ~%Rbx] 
      ; Jmp, [~$$"outer_loop"]
      ]
    ; text "end"
      [ Cmpq, [~$0; ~%Rax]
      ; J Neq, [~$$"bubble_sort"] 
      ; Leaq, [~$$"data"; ~%Rax]
      ; Retq, []
      ]
    ; data "data"
      (List.map (fun n -> Quad (Lit n)) nums)
    ]
  in

  let is_sorted (nums : int64 list) = 
    let m = assemble (bubble_sort nums) |> load in
    let data_addr = map_addr (run m) in
    let data_index =
      begin match data_addr with
      | Some x -> x
      | None -> raise (X86lite_segfault)
      end
    in
    let rec create_list (addr : int) (length : int) (l : int64 list)  : int64 list =
      if length = 0 then l @ []
      else let new_l = l @ [(int64_of_sbytes [m.mem.(addr); m.mem.(addr+1); m.mem.(addr+2);
             m.mem.(addr+3); m.mem.(addr+4); m.mem.(addr+5); m.mem.(addr+6); m.mem.(addr+7)])];
           in
           create_list (addr + 8) (length - 1) new_l;
    in
    let res = create_list data_index (List.length nums) [] in
    let ans = List.sort Int64.compare nums in
    res = ans
  in

  let list1 = [1L; 4L; 3L; 0L; 2L] in
  let list2 = [2L] in
  let list3 = [2L; 1L; 4L; 2L] in
  let list4 = [4L; 3L; 2L; 1L] in
  let list5 = [-3L; 3L; 9L; -4L] in
  let list6 = [40000L; 2345L; 356L; 99999L] in
  
  [ ("Sorting 1L, 4L, 3L, 0L, 2L", assert_eqf (fun () -> (is_sorted list1)) true);
    ("Sorting empty list", assert_eqf (fun () -> (is_sorted [])) true);
    ("Sorting a single number", assert_eqf (fun () -> (is_sorted list2)) true);
    ("Sorting repeated numbers", assert_eqf (fun () -> (is_sorted list3)) true);
    ("Sorting sorting numbers in reverse", assert_eqf (fun () -> (is_sorted list4)) true);
    ("Sorting sorting negative numbers", assert_eqf (fun () -> (is_sorted list5)) true);
    ("Sorting sorting large numbers", assert_eqf (fun () -> (is_sorted list6)) true);
  ]

*)

(* * *)

let clancyt_tests =
  (* Fibonacci number generator, given some x returns sum of the first x terms 
     in sequence while writing the entire generated sequence to DATA. Featuring:
      - nested loops with different logical breakpoints
      - many comparisons
      - arithmetic
      - data interaction
      - multiple non-sequential data blocks, still compiled nicely by assembler
      - multiple indirections
  *)
  let fibonacci x =
    [ text "main"
      [ Movq,  [~$0; ~%R13]
      ; Movq,  [~$x; ~%R12]
      ; Cmpq,  [~$0; ~%R12]
      ; J Le,  [Imm (Lbl "zero_out")]
      ; Leaq,  [Ind1 (Lbl "seq"); ~%R10]
      ; Movq,  [~$1; Ind2 R10]
      ; Incq,  [~%R13]
      ; Decq,  [~%R12]
      ; J Eq,  [Imm (Lbl "out")]
      ; Addq,  [~$8; ~%R10]
      ; Movq,  [~$1; Ind2 R10]
      ; Incq,  [~%R13]
      ; Decq,  [~%R12]
      ; J Eq,  [Imm (Lbl "out")]
      ; Subq,  [~$8; ~%R10]
      ; Subq,  [~$1; ~%R12]
      ]
    ; text "loop1"
      [ Callq, [~$$"count"]
      ; Decq,  [~%R12]
      ; J Ge,  [Imm (Lbl "loop1")]
      ; Addq,  [~$8; ~%R10]
      ]
    ; text "out"
      [ Movq,  [~%R13; ~%Rax]
      ; Retq,  []
      ]
    ; data "seq"
      [ Quad   (Lit 1L)
      ; Quad   (Lit 1L)
      ]
    ; text "count"
      [ Movq,  [Ind2 R10; ~%R08]
      ; Addq,  [~$8; ~%R10]
      ; Movq,  [Ind2 R10; ~%R09]
      ; Addq,  [~%R08; ~%R09]
      ; Movq,  [~%R09; ~%R14]
      ]
    ; text "nest_loop2"
      [ Incq,  [~%R13]
      ; Decq,  [~%R14]
      ; Cmpq,  [~$1; ~%R14]
      ; J Ge,  [Imm (Lbl "nest_loop2")]
      ]
    ; text "count_continued"
      [ Addq,  [~$8; ~%R10]
      ; Movq,  [~%R09; Ind2 R10]
      ; Subq,  [~$8; ~%R10]
      ; Retq,  []
      ]
    ; data "junk"
      [ Quad   (Lit 1L)
      ; Quad   (Lit 51L)
      ; Quad   (Lit 1L)
      ; Quad   (Lit 41L)
      ; Quad   (Lit 1L)
      ; Quad   (Lit 12L)
      ; Quad   (Lit 1L)
      ; Quad   (Lit 1L)
      ; Quad   (Lit 3L)
      ]
    ; text "zero_out"
      [ Movq,  [~$0; ~%Rax]
      ; Retq,  []
      ]
    ]
  in

  [ ("fibonacci_negative", program_test (fibonacci (-1)) (Int64.of_int 0));
    ("fibonacci_0", program_test (fibonacci 0) (Int64.of_int 0));
    ("fibonacci_1", program_test (fibonacci 1) (Int64.of_int 1));
    ("fibonacci_2", program_test (fibonacci 2) (Int64.of_int 2));
    ("fibonacci_3", program_test (fibonacci 3) (Int64.of_int 4));
    ("fibonacci_4", program_test (fibonacci 4) (Int64.of_int 7));
    ("fibonacci_5", program_test (fibonacci 5) (Int64.of_int 12));
    ("fibonacci_17", program_test (fibonacci 17) (Int64.of_int 4180));
  ]

(* * *)

let davidcao_tests =
  (* Below is our non-trivial x86 program for Part III
   * We implemented modular exponention using this method:
   * en.wikipedia.org/wiki/Modular_exponentiation#Right-to-left_binary_method *)
  let modular_exp b e m =
    [ text "main"
      [ Movq,  [~$1; ~%Rax]
      ; Movq,  [~$b; ~%Rdi]
      ; Movq,  [~$e; ~%Rsi]
      ; Movq,  [~$m; ~%Rdx]
      ; Movq,  [~$0; ~%Rcx]
      ]
    ; text "loop"
      [ Cmpq,  [~$63; ~%Rcx]
      ; J Gt,  [~$$"exit"]
      ; Movq,  [~%Rsi; ~%R08]
      ; Sarq, [~%Rcx; ~%R08]
      ; Andq, [~$1; ~%R08]
      ; Cmpq, [~$1; ~%R08]
      ; J Neq,  [~$$"loop_resolution"]
      ; Movq,  [~$1; ~%R10]
      ; Shlq,  [~%Rcx; ~%R10]
      ]
    ; text "exp_step"
      [ Cmpq,  [~$0; ~%R10]
      ; J Eq,  [~$$"loop_resolution"]
      ; Imulq,  [~%Rdi; ~%Rax]
      ]
    ; text "mod_step"
      [ Cmpq,  [~$m; ~%Rax]
      ; J Lt,  [~$$"exp_resolution"]
      ; Subq,  [~$m; ~%Rax]
      ; Jmp,   [~$$"mod_step"]
      ]
    ; text "exp_resolution"
      [ Decq, [~%R10]
      ; Jmp,   [~$$"exp_step"]
      ]
    ; text "loop_resolution"
      [ Incq,  [~%Rcx]
      ; Jmp,   [~$$"loop"]
      ]
    ; text "exit"
      [ Retq,  []
      ]
    ]
  in

  [ ("modular_exp 3 2 10", program_test (modular_exp 3 2 10) 9L);
    ("modular_exp 5 3 100", program_test (modular_exp 5 3 100) 25L);
    ("modular_exp 2 65 1000", program_test (modular_exp 2 65 1000) 232L);
    ("modular_exp 61 7293 1000", program_test (modular_exp 61 7293 1000) 381L);
  ]

(* * *)

let eneyman_tests =
  (* wavy_number takes in an integer n and finds the number of wavy numbers
   * less than or equal to n. A number is wavy iff its binary representation 
   * as a 64 bit integer has an increasing and decreasing subsequence. *)
  let wavy_number n =
    [ text "main" 
      [ Movq, [~$n; ~%Rdi]
      ; Movq, [~$0; ~%Rax]
      ]
    ; text "loop"
      [ Cmpq, [~$0; ~%Rdi]
      ; J Eq, [~$$"exit"]
      ; Movq, [~$0; ~%Rbx]
      ; Movq, [~$0; ~%Rcx]
      ; Movq, [~%Rdi; ~%Rdx]
      ]
    ; text "inner_loop"
      [ Cmpq, [~$0; ~%Rdx ]
      ; J Eq, [~$$"loop_end"]
      ; Movq, [~%Rdx; ~%Rsi]
      ; Andq, [~$1; ~%Rsi]
      ; Shrq, [~$1; ~%Rdx]
      ; Movq, [~%Rdx; ~%R08]
      ; Andq, [~$1; ~%R08]
      ; Cmpq, [~%Rsi; ~%R08]
      ; J Lt, [~$$"incr"]
      ; J Gt, [~$$"decr"]
      ]
    ; text "end_cmp"
      [ Jmp, [~$$"inner_loop"]
      ]
    ; text "loop_end"
      [ Incq, [~%Rax]
      ; Cmpq, [~$0; ~%Rbx]
      ; J Eq, [~$$"wdec"]
      ; Cmpq, [~$0; ~%Rcx]
      ; J Eq, [~$$"wdec"]
      ]
    ; text "go_back"
      [ Decq, [~%Rdi]
      ; Jmp, [~$$"loop"]
      ]
    ; text "incr"
      [ Incq, [~%Rbx]
      ; Jmp, [~$$"end_cmp"]
      ]
    ; text "decr"
      [ Incq, [~%Rcx]
      ; Jmp, [~$$"end_cmp"]
      ]
    ; text "wdec"
      [ Decq, [~%Rax]
      ; Jmp, [~$$"go_back"]
      ]
    ; text "exit"
      [ Retq, []
      ]
    ]
  in

  [ ("wavy_15", program_test (wavy_number 15) 11L);
    ("wavy_16", program_test (wavy_number 16) 12L);
    ("wavy_7", program_test (wavy_number 7) 4L);
    ("wavy_0", program_test (wavy_number 0) 0L);
  ]

(* * *)

let hand_tests =
  let lcm a b =
    [text "mod"
      [ Cmpq, [~%R12; ~%R11]
      ; J Lt, [~$$"exit1"]
      ; Subq, [~%R12; ~%R11]
      ; Jmp,  [~$$"mod"]
      ]
    ; text "exit1"
      [ Retq, []
      ]
    ; text "lcm"
      [ Cmpq,  [~$0; ~%R09]
      ; J Eq,  [~$$"exit2"]
      ; Movq,  [~%R09; ~%R10]
      ; Movq,  [~%R08; ~%R11]
      ; Movq,  [~%R09; ~%R12]
      ; Callq, [~$$"mod"]            
      ; Movq,  [~%R11; ~%R09]
      ; Movq,  [~%R10; ~%R08]
      ; Jmp,   [~$$"lcm"]
      ]
    ; text "div"
      [ Cmpq,  [~$0; ~%R15]
      ; J Eq,  [~$$"exit"]
      ; Subq,  [~%R13; ~%R15]
      ; Addq,  [~$1; ~%Rax]
      ; Jmp,   [~$$"div"]
      ]
    ; text "exit2"
      [ Movq,  [~%R08; ~%R13]
      ; Imulq, [~%R14; ~%R15]         
      ; Movq,  [~$0; ~%Rax]
      ; Jmp,   [~$$"div"]    
      ]
    ; text "exit"
      [ Retq,  []
      ]
    ; gtext "main"
      [ Movq,  [~$a; ~%R14]
      ; Movq,  [~$b; ~%R15]
      ; Movq,  [~%R14; ~%R08]
      ; Movq,  [~%R15; ~%R09]
      ; Callq, [~$$"lcm"]
      ; Retq,  []
      ]
    ]
  in

  [ ("lcm_8_12", program_test (lcm 8 12) 24L);
    ("lcm_12_8", program_test (lcm 12 8) 24L);
    ("lcm_prime", program_test (lcm 5 3) 15L);
    ("lcm_large", program_test (lcm 80 90) 720L);
  ]

(* * *)

let hta_tests =
  let cube_of_product m n = 
    [ text "main" 
      [ Movq, [~$m; ~%Rbx]
      ; Movq, [~$n; ~%Rcx]
      ; Callq, [~$$"mult"]
      ; Movq, [~%Rax; ~%Rbx]
      ; Callq, [~$$"cube"]
      ; Retq, []
      ]
    ; text "mult"
      [ Xorq, [~%Rax; ~%Rax]
      ; Cmpq, [~$0; ~%Rcx]
      ; J Eq, [~$$"mult_end"]
      ]
    ; text "mult_loop"
      [ Addq, [~%Rbx; ~%Rax]
      ; Decq, [~%Rcx]
      ; Cmpq, [~$0; ~%Rcx]
      ; J Gt, [~$$"mult_loop"]
      ]
    ; text "mult_end"
      [ Retq, []]
    ; text "cube"
      [ Xorq, [~%Rax; ~%Rax]
      ; Movq, [~%Rbx; ~%Rcx]
      ; Movq, [~%Rbx; ~%Rdx]
      ; Cmpq, [~$0; ~%Rcx]
      ; J Eq, [~$$"cube_end"]
      ]
    ; text "cube_loop" []
    ; text "square_pre"
      [ Xorq, [~%R09; ~%R09]
      ; Movq, [~%Rdx; ~%R10]
      ]
    ; text "square_loop"
      [ Addq, [~%Rdx; ~%R09]
      ; Decq, [~%R10]
      ; Cmpq, [~$0; ~%R10]
      ; J Gt, [~$$"square_loop"]
      ]
    ; text "cube_loop_body"
      [ Addq, [~%R09; ~%Rax]
      ; Decq, [~%Rcx]
      ; Cmpq, [~$0; ~%Rcx]
      ; J Gt, [~$$"cube_loop"]
      ]
    ; text "cube_end"
      [ Retq, []]
    ]
  in

  [ ("sop1", program_test (cube_of_product 5 6) 27000L);
    ("sop2", program_test (cube_of_product 6 2) 1728L);
    ("sop3", program_test (cube_of_product 9 10) 729000L);
    ("sop4", program_test (cube_of_product 16 9) 2985984L);
    ("sop5", program_test (cube_of_product 10 10) 1000000L);
    ("sop6", program_test (cube_of_product 9 0) 0L);
    ("sop7", program_test (cube_of_product 1 1) 1L);
    ("sop8", program_test (cube_of_product 0 1) 0L);
    ("sop9", program_test (cube_of_product 0 0) 0L);
  ]

(* * *)

let hunterl_tests =
  (*
   * Selection uses simple selection algorithm (Expected O(n), worst case O(n^2))
   * to find, given a list L and an integer n, the answer a such that, in the
   * sorted list S, S[n]=a. (i.e. finds the nth item in the sorted version of L
   *)
  let selection (unsorted:int64 list) (n:int) : prog =
    [ data "list"
      (List.map (fun x -> (Quad (Lit x))) unsorted)
    ; text "select"
      (* set ~%R10 to the size of the list *)
      [ Movq, [~%R09; ~%R10]
      ; Subq, [~%R08; ~%R10]
      ; Sarq, [~$3; ~%R10]
      ; Incq, [~%R10]
      (* step 0: if first index >= last index, list is 1 elem long, return *)
      ; Cmpq, [~%R09; ~%R08]
      ; J Ge, [~$$"end_select1"]
      (* step 1: select last item from list as pivot *)
      ; Callq, [~$$"partition"]
      (* now Rax = pivotIndex *)
      (* find the pivot index relative to start of list *)
      ; Movq, [~%Rax; ~%Rbx]
      ; Subq, [~%R08; ~%Rbx]
      ; Sarq, [~$3; ~%Rbx]
      (* if n = pivotIndex, done *)
      ; Cmpq, [~%Rbx; ~%R11]
      ; J Eq, [~$$"end_select2"]
      (* if n < pivotIndex, select on left list *)
      ; Cmpq, [~%Rbx; ~%R11]
      ; J Lt, [~$$"select_left"]
      (* set beginning of list to 1 more than pivot = Rax *)
      ; Movq, [~%Rax; ~%R08]
      ; Addq, [~$8; ~%R08]
      (* subtract pivot from n *)
      ; Subq, [~%Rbx; ~%R11]
      ; Decq, [~%R11]
      (* recurse *)
      ; Jmp, [~$$"select"]
      ]
    ; text "select_left"
      (* set end of list to 1 less than pivot = Rax *)
      [ Movq, [~%Rax; ~%R09]
      ; Subq, [~$8; ~%R09]
      (* recurse *)
      ; Jmp, [~$$"select"]
      ]
    ; text "partition"
      (* R12 = pivotValue = last item in list *)
      [ Movq, [Ind2(R09); ~%R12]
      (* R13 = highIndex = first index in list *)
      ; Movq, [~%R08; ~%R13]
      (* R14 = i = first item in list *)
      ; Movq, [~%R08; ~%R14]
      (* loop if i < end of list *)
      ; Cmpq, [~%R09; ~%R14]
      ; J Lt, [~$$"partition_loop"]
      ]
    ; text "end_select1"
      (* move first elem of list into Rax and return *)
      [ Movq, [Ind2(R08); ~%Rax]
      ; Retq, []
      ]
    ; text "end_select2"
      (* move element at Rax into Rax *)
      [ Movq, [Ind2(Rax); ~%Rax]
      ; Retq, []
      ]
    ; text "partition_loop"
      (* R15 = array[i] *)
      [ Movq, [Ind2(R14); ~%R15]
      (* if !(array[i] < pivotValue) *)
      ; Cmpq, [~%R12; ~%R15]
      ; J Ge, [~$$"partition_loop_end"]
      (* using Rax as temp, swap array[i] and array[highIndex] *)
      ; Movq, [Ind2(R13); ~%Rax]
      ; Movq, [~%Rax; Ind2(R14)]
      ; Movq, [~%R15; Ind2(R13)]
      (* increment highIndex *)
      ; Addq, [~$8; ~%R13]
      ; Jmp, [~$$"partition_loop_end"]
      ]
    ; text "partition_loop_end"
      (* R14/i++ *)
      [ Addq, [~$8; ~%R14]
      (* loop if i < end of list *)
      ; Cmpq, [~%R09; ~%R14]
      ; J Lt, [~$$"partition_loop"]
      (* else swap last elem in list with list[highIndex] and return *)
      ; Movq, [Ind2(R13); ~%Rax]
      ; Movq, [~%Rax; Ind2(R09)]
      ; Movq, [~%R12; Ind2(R13)]
      ; Movq, [~%R13; ~%Rax]
      ; Retq, []
      ]
    ; text "main"
      (* set ~%R8 to the first position of the list in memory *)
      [ Leaq, [Ind1 (Lbl "list"); ~%R08]
      (* set ~%R9 to the last index of the list *)
      ; Movq, [~$(List.length unsorted); ~%R09]
      ; Imulq, [~$8; ~%R09]
      ; Addq, [~%R08; ~%R09]
      ; Subq, [~$8; ~%R09]
      (* set ~%R11 to the n we are looking for *)
      ; Movq, [~$n; ~%R11]
      ; Callq, [~$$"select"]
      ; Retq, []
      ]
    ]
  in

  let selection_test (unsorted:int64 list) (n:int) (exp:int64) () =
    let ans = assemble (selection unsorted n) |> load |> run in

    if ans <> exp then
      failwith (Printf.sprintf "selection failed, expected %Ld, got %Ld" exp ans)
    else ()
  in

  (* numbers from 1-40 sorted randomly *)
  let large_list =
    [ 4L; 37L; 6L; 12L; 25L; 2L; 24L; 31L; 28L; 23L; 22L; 27L; 29L; 16L; 10L; 1L;
      17L; 38L; 39L; 9L; 36L; 20L; 7L; 19L; 5L; 30L; 15L; 26L; 8L; 32L; 40L; 33L;
      3L; 18L; 13L; 14L; 21L; 11L; 34L; 35L;
    ]
  in

  (* same but numbers 0-300 *)
  let huge_list =
    [ 68L; 205L; 79L; 244L; 120L; 253L; 40L; 219L; 89L; 13L; 51L; 291L; 131L; 173L;
      134L; 181L; 30L; 28L; 274L; 34L; 148L; 249L; 62L; 228L; 82L; 104L; 44L; 31L;
      267L; 279L; 73L; 18L; 14L; 198L; 128L; 100L; 258L; 245L; 215L; 113L; 70L;
      167L; 224L; 170L; 162L; 90L; 293L; 75L; 139L; 289L; 10L; 243L; 247L; 239L;
      298L; 238L; 159L; 27L; 225L; 46L; 209L; 264L; 234L; 81L; 204L; 45L; 78L;
      217L; 300L; 218L; 271L; 163L; 87L; 240L; 216L; 229L; 257L; 110L; 37L; 155L;
      56L; 160L; 202L; 161L; 226L; 151L; 130L; 136L; 114L; 246L; 122L; 33L; 288L;
      5L; 145L; 177L; 47L; 168L; 184L; 97L; 109L; 146L; 20L; 135L; 266L; 115L;
      165L; 208L; 231L; 152L; 199L; 178L; 193L; 153L; 42L; 179L; 85L; 74L; 55L;
      96L; 186L; 248L; 7L; 83L; 141L; 41L; 241L; 192L; 50L; 132L; 275L; 203L;
      26L; 1L; 8L; 76L; 93L; 276L; 220L; 57L; 3L; 259L; 95L; 29L; 207L;
      35L; 77L; 39L; 59L; 286L; 118L; 17L; 277L; 169L; 232L; 60L; 187L; 164L;
      270L; 210L; 61L; 103L; 185L; 49L; 171L; 222L; 12L; 284L; 58L; 108L; 175L;
      84L; 221L; 189L; 23L; 200L; 123L; 2L; 121L; 54L; 67L; 265L; 53L; 242L;
      138L; 191L; 282L; 251L; 124L; 107L; 65L; 106L; 22L; 133L; 235L; 48L; 94L;
      38L; 278L; 297L; 157L; 211L; 64L; 180L; 80L; 142L; 223L; 111L; 213L; 137L;
      294L; 273L; 86L; 269L; 127L; 176L; 98L; 125L; 88L; 212L; 105L; 236L; 156L;
      196L; 292L; 24L; 290L; 158L; 183L; 252L; 227L; 144L; 281L; 188L; 69L; 268L;
      272L; 296L; 140L; 201L; 25L; 194L; 230L; 63L; 102L; 206L; 149L; 52L; 15L;
      119L; 16L; 295L; 263L; 101L; 112L; 195L; 21L; 262L; 11L; 214L; 285L; 260L;
      197L; 99L; 9L; 237L; 36L; 174L; 71L; 32L; 4L; 150L; 19L; 190L; 299L; 182L;
      143L; 91L; 233L; 250L; 166L; 261L; 92L; 116L; 287L; 126L; 43L; 280L; 256L;
      172L; 147L; 255L; 6L; 117L; 254L; 72L; 66L; 283L; 154L; 129L; 0L;
    ]
  in

  [ ("empty list", selection_test [] 0 0L);
    ("easy1", selection_test [1L;2L;3L] 1 2L);
    ("easy2", selection_test [1L;2L;3L] 0 1L);

    ("unsorted1", selection_test [4L;3L;1L;2L] 0 1L);
    ("unsorted2", selection_test [4L;3L;1L;2L] 2 3L);
    ("unsorted3", selection_test [4L;3L;1L;2L] 3 4L);

    ("large unsorted1", selection_test large_list 0 1L);
    ("large unsorted2", selection_test large_list 10 11L);
    ("large unsorted3", selection_test large_list 30 31L);
    ("large unsorted4", selection_test large_list 24 25L);
    ("large unsorted5 median", selection_test large_list 20 21L);
    ("large unsorted6 max", selection_test large_list 39 40L);
    ("large unsorted7 max", selection_test large_list 28 29L);

    ("huge unsorted1", selection_test huge_list 0 0L);
    ("huge unsorted2", selection_test huge_list 300 300L);
    ("huge unsorted3", selection_test huge_list 150 150L);
    ("huge unsorted4", selection_test huge_list 72 72L);
    ("huge unsorted5", selection_test huge_list 236 236L);
    ("huge unsorted6", selection_test huge_list 168 168L);
    ("huge unsorted7", selection_test huge_list 14 14L);
    ("huge unsorted8", selection_test huge_list 277 277L);
    ("huge unsorted9", selection_test huge_list 280 280L);
  ]

(* * *)

let jaust_tests =
  let gcd =
    [ text "gcd" 
      [ Cmpq, [~%Rsi; ~%Rdi]
      ; J Le, [~$$"fun"]
      ; Movq, [~%Rsi; ~%R08]
      ; Movq, [~%Rdi; ~%Rsi]
      ; Movq, [~%R08; ~%Rdi]
      ]
    ; text "fun"
      [ Xorq, [~%R08; ~%R08]
      ; Movq, [~%Rsi; ~%Rax]
      ; Cmpq, [~%R08; ~%Rdi]
      ; J Le, [~$$"exit"]
      ; Movq, [~%Rsi; ~%R09]
      ; Xorq, [~%R10; ~%R10]
      ]
    ; text "mod"
      [ Decq, [~%R09]
      ; Incq, [~%R10]
      ; Cmpq, [~%R10; ~%Rdi]
      ; J Eq, [~$$"if a=b"]
      ; Jmp,  [~$$"merge"]
      ]
    ; text "if a=b"
      [ Xorq, [~%R10; ~%R10]
      ]
    ; text "merge"
      [ Cmpq, [~%R09; ~%R08]
      ; J Eq, [~$$"end_mod"]
      ; Jmp,  [~$$"mod"]
      ]
    ; text "end_mod"
      [ Movq, [~%Rdi; ~%Rsi]
      ; Movq, [~%R10; ~%Rdi]
      ; Jmp,  [~$$"fun"]
      ]
    ; text "exit"
      [ Movq, [~%Rsi; ~%Rax]
      ; Retq, []
      ]
    ; text "main"
      [ Movq, [~$24; ~%Rsi]
      ; Movq, [~$15; ~%Rdi]
      ; Callq,[~$$"gcd"]
      ; Retq, []
      ]
    ]
  in

  [ ("gcd", program_test gcd 3L);
  ]

(* * *)

let keweiqu_tests =
  let gcd a b =
    [ text "mod"
      [ Subq, [~%R08; ~%R09]
      ; Cmpq, [~%R08; ~%R09]
      ; J Ge, [~$$"mod"] 
      ; Movq, [~%R09; ~%R08]
      ; Retq, []
      ]
    ; text "swap"
      [ Movq, [~%R08; ~%R10]
      ; Movq, [~%R09; ~%R08]
      ; Movq, [~%R10; ~%R09]
      ; Retq, []
      ]
    ; text "set_min_first"
      [ Cmpq, [~%R08; ~%R09]
      ; J Le, [~$$"swap"]
      ; Retq, []
      ]
    ; text "gcd"
      [ Callq, [~$$"set_min_first"]
      ; Movq, [~%R08; ~%R10]
      ; Callq, [~$$"mod"]
      ; Movq, [~%R10; ~%R09]
      ; Cmpq, [~%R08; ~$0]
      ; J Eq, [~$$"exit"]
      ; Callq, [~$$"gcd"]
      ; Retq, []
      ]
    ; text "exit"
      [ Movq,  [~%R09; ~%Rax]
      ; Retq, []
      ]
    ; gtext "main"
      [ Movq, [~$a; ~%R08]
      ; Movq, [~$b; ~%R09]
      ; Callq, [~$$"gcd"]
      ; Retq, [] 
      ]
    ]
  in

  [ ("gcd1", program_test (gcd 8 9) 1L);
    ("gcd1", program_test (gcd 10 10) 10L);
    ("gcd1", program_test (gcd 121 11) 11L);
    ("gcd1", program_test (gcd  12 9) 3L);
  ]

(* * *)

(*
  [FAIL] Our solution is getting the following:

  bst test1: failed - test threw exception: Simulator.X86lite_segfault
  bst test2: failed - test threw exception: Simulator.X86lite_segfault
  bst test3: failed - test threw exception: Simulator.X86lite_segfault
  bst test4: failed - test threw exception: Simulator.X86lite_segfault
  bst test5: failed - test threw exception: Simulator.X86lite_segfault
  bst test6: failed - test threw exception: Simulator.X86lite_segfault
  bst test7: failed - test threw exception: Simulator.X86lite_segfault
*)

(*

let kyim_tests =
  let bst pairs key = 
    let quad_of_int i = Quad (Lit (Int64.of_int i)) in
    [ text "malloc"
      (* key, value : pointer *)
      [ Movq, [ Ind1 (Lbl "heap"); ~%Rax ]
      ; Movq, [ ~%Rdi; Ind2 Rax ]
      ; Movq, [ ~%Rsi; Ind3 (Lit 8L, Rax) ]
      ; Movq, [ ~$0; Ind3 (Lit 16L, Rax) ]
      ; Movq, [ ~$0; Ind3 (Lit 24L, Rax) ]
      ; Addq, [ ~$32; Ind1 (Lbl "heap") ]
      ; Retq, []
      ]
    ; text "add"
      (* key, value, *branch : () *)
      [ Cmpq, [ Ind2 Rdx; ~$0 ]
      ; J Eq, [ ~$$"new" ]
      ; Movq, [ Ind2 Rdx; ~%R10 ]
      ; Cmpq, [ ~%Rdi; Ind2 R10 ]
      ; J Eq, [ ~$$"replace" ]
      ; Leaq, [ Ind3 (Lit 16L, R10); ~%Rdx ]
      ; J Gt, [ ~$$"rec_add" ]
      ; Leaq, [ Ind3 (Lit 24L, R10); ~%Rdx ]
      ]
    ; text "rec_add"
      [ Callq, [ ~$$"add" ]
      ; Retq, []
      ]
    ; text "new"
      [ Callq, [ ~$$"malloc" ]
      ; Movq, [ ~%Rax; Ind2 Rdx ]
      ; Retq, []
      ]
    ; text "replace"
      [ Movq, [ ~%Rsi; Ind3 (Lit 8L, R10) ]
      ; Retq, []
      ]
    ; text "lookup"
      (* key, *branch : value *)
      [ Cmpq, [ Ind2 Rsi; ~$0 ]
      ; J Eq, [ ~$$"fail" ]
      ; Movq, [ Ind2 Rsi; ~%R10 ]
      ; Cmpq, [ ~%Rdi; Ind2 R10 ]
      ; J Eq, [ ~$$"found" ]
      ; Leaq, [ Ind3 (Lit 16L, R10); ~%Rsi ]
      ; J Gt, [ ~$$"rec_lookup" ]
      ; Leaq, [ Ind3 (Lit 24L, R10); ~%Rsi ]
      ]
    ; text "rec_lookup"
      [ Callq, [ ~$$"lookup" ]
      ; Retq, []
      ]
    ; text "found"
      [ Movq, [ Ind3 (Lit 8L, R10); ~%Rax ]
      ; Retq, []
      ]
    ; text "fail"
      [ Movq, [ Imm (Lit Int64.min_int); ~%Rax ]
      ; Retq, []
      ]
    ; text "init"
      (* () : () *)
      [ Cmpq, [ Ind1 (Lbl "args"); ~$0 ]
      ; J Neq, [ ~$$"init_loop" ]
      ; Retq, []
      ]
    ; text "init_loop"
      [ Subq, [ ~$1; Ind1 (Lbl "args") ]
      ; Movq, [ Ind1 (Lbl "args"); ~%R10 ]
      ; Imulq, [ ~$16; ~%R10 ]
      ; Addq, [ ~$$"args"; ~%R10 ]
      ; Addq, [ ~$16; ~%R10 ]
      ; Movq, [ Ind2 (R10); ~%Rdi ]
      ; Movq, [ Ind3 (Lit 8L, R10); ~%Rsi ]
      ; Movq, [ ~$$"tree"; ~%Rdx ]
      ; Callq, [ ~$$"add" ]
      ; Jmp, [ ~$$"init" ]
      ]
    ; gtext "main"
      [ Movq, [ ~$$"heap"; Ind1 (Lbl "heap") ]
      ; Addq, [ ~$8; Ind1 (Lbl "heap") ]
      ; Callq, [ ~$$"init" ]
      ; Movq, [ ~$$"args"; ~%R10 ]
      ; Movq, [ Ind3 (Lit 8L, R10); ~%Rdi ]
      ; Movq, [ ~$$"tree"; ~%Rsi ]
      ; Callq, [ ~$$"lookup" ]
      ; Movq, [ ~%Rax; ~%Rdi ]
      ; Movq, [ ~$$"tree"; ~%Rsi ]
      ; Callq, [ ~$$"lookup" ]
      ; Retq, []
      ]
    ; data "args"
      ([ quad_of_int (List.length pairs); quad_of_int key ]
      @ List.concat (List.map (fun (k, v) ->
        [quad_of_int k; quad_of_int v]
      ) (List.rev pairs)))
    ; data "tree"
      [ Quad (Lit 0L)
      ]
    ; data "heap"
      [ Quad (Lit 0L)
      ]
    ]
  in

  [ ("bst test1", program_test (bst [] 0) Int64.min_int);
    ("bst test2", program_test (bst [(77, 88)] 77) Int64.min_int);
    ("bst test3", program_test (bst [(0x33, 0x44); (0x44, 0x55)] 0x33) 0x55L);
    ("bst test4", program_test (bst [(0x33, 0x44); (0x44, 0x55); (0x44, 0x66)] 0x33) 0x66L);
    ("bst test5", program_test (bst [(0x33, 0x44); (0x44, 0x55); (0x44, 0x66)] 0x66) Int64.min_int);
    ("bst test6", program_test (bst [(0x33, 0x44); (0x55, 0x66); (0x33, 0x55)] 0x33) 0x66L);
    ("bst test7", program_test (bst [(0x33, 0x44); (0x55, 0x66); (0x44, 0x77)] 0x33) 0x77L);
  ]

*)

(* * *)

let maale_tests =
  let gcd a b =
    [ gtext "main"
      [ Movq,  [~$a; ~%Rax]
      ; Movq,  [~$b; ~%Rbx]
      ; Cmpq,  [~%Rbx; ~%Rax]
      ; J Eq,  [~$$"exit"]
      ; Jmp,  [~$$"gcd"]
      ]
    ; text "gcd"
      [ Cmpq,  [~%Rbx; ~%Rax]
      ; J Ge,  [~$$"mod"]
      ; Movq,  [~%Rax; ~%Rcx]
      ; Movq,  [~%Rbx; ~%Rax]
      ; Movq,  [~%Rcx; ~%Rbx]
      ; Jmp,   [~$$"gcd"]
      ]
    ; text "mod"
      [ Cmpq, [~$0; ~%Rax]
      ; J Eq, [~$$"exit"]
      ; Cmpq, [~%Rax; ~%Rbx] 
      ; J Gt, [~$$"gcd"]
      ; Subq, [~%Rbx; ~%Rax]
      ; Jmp,  [~$$"mod"]
      ]
    ; text "exit"
      [
        Movq, [~%Rbx; ~%Rax]
      ; Retq, []
      ]
    ]
  in

  [ ("gcd, 8&6 -> 2", program_test (gcd 8 6) 2L);
    ("gcd, 8&4 -> 4", program_test (gcd 8 4) 4L);
    ("gcd, 8&8 -> 8", program_test (gcd 8 8) 8L);
    ("gcd, 8&7 -> 1", program_test (gcd 8 7) 1L);   
    ("gcd, 6&8 -> 2", program_test (gcd 6 8) 2L);
    ("gcd, 4&8 -> 4", program_test (gcd 4 8) 4L);
    ("gcd, 7&8 -> 1", program_test (gcd 7 8) 1L);
    ("gcd, 24&8 -> 8", program_test (gcd 24 8) 8L);
    ("gcd, 30&17 -> 1", program_test (gcd 30 17) 1L);
    ("gcd, 34&17 -> 1", program_test (gcd 34 17) 17L);
  ]

(* * *)

let minski_tests =
  let sqrt n =
    [ text "main"
      [ Movq, [~$n; ~%Rdi]
      ; Callq, [~$$"sqrt"]
      ; Retq, []
      ]
    ; text "sqrt"
      [ Cmpq, [~$0; ~%Rdi]
      ; J Lt, [~$$"negative"]
      ]
    ; text "loop"
      [ Movq, [~%Rax; ~%R08]
      ; Imulq, [~%R08; ~%R08]
      ; Cmpq, [~%R08; ~%Rdi]
      ; J Lt, [~$$"output"]
      ; Addq, [~$1; ~%Rax]
      ; Jmp, [~$$"loop"]
      ]
    ; text "output"
      [ Subq, [~$1; ~%Rax]
      ; Retq, []
      ]
    ; text "negative"
      [ Movq, [~$(-1); ~%Rax]
      ; Retq, []
      ]
    ]
  in

  let gcd a b =
    [ text "gcd"
      [ Cmpq, [~%R08; ~%Rax]
      ; J Eq, [~$$"stop"]
      ; J Gt, [~$$"gt"]
      ; Jmp, [~$$"le"]
      ]
    ; text "gt"
      [ Subq, [~%R08; ~%Rax]
      ; Jmp, [~$$"gcd"]
      ]
    ; text "le"
      [ Subq, [~%Rax; ~%R08]
      ; Jmp, [~$$"gcd"]
      ]
    ; text "stop"
      [ Retq, []
      ]
    ; text "main"
      [ Movq, [~$a; ~%Rax]
      ; Movq, [~$b; ~%R08]
      ; Callq, [~$$"gcd"]
      ; Retq, []
      ]
    ]
  in

  [ ("sqrt1", program_test (sqrt 625) 25L);
    ("sqrt2", program_test (sqrt (-4)) (Int64.neg 1L));
    ("sqrt3", program_test (sqrt 1024) 32L);
    ("gcd1", program_test (gcd 25 5) 5L);
    ("gcd2", program_test (gcd 30 27) 3L);
    ("gcd3", program_test (gcd 11 25) 1L);
    ("gcd4", program_test (gcd 121 77) 11L);
  ]

(* * *)

let olekg_tests =
  let fib n =
    [ text "fib"
      (* Check if n is less than or equal to 1, in which case
       * the fib number is 1 *)
      [ Cmpq, [Imm (Lit 0x1L); Reg Rcx]
      ; J Le, [Imm (Lbl "bottom")]
      (* Else fib of n = fib of (n-1) + fib of (n-2) *)
      (* Recurse to find the (n-1)th fib number *)
      ; Decq, [Reg Rcx]
      ; Callq, [Imm (Lbl "fib")]
      (* Recurse to find the (n-2)th fib number *)
      ; Decq, [Reg Rcx]
      ; Callq, [Imm (Lbl "fib")]
      (* Return Rcx to original value *)
      ; Addq, [Imm (Lit 0x2L); Reg Rcx]
      (* Return *)
      ; Retq, []]
    ; text "bottom"
      (* Add 1 to Rax and Return *)
      [ Addq, [Imm (Lit 0x1L); Reg Rax]
      ; Retq, []
      ]
    ; text "main"
      (* Store the value of n *)
      [ Movq, [Imm (Lit n); Reg Rcx]
      (* Start the recursion, adding 1 to Rax every 
       * time f_0 or f_1 is reached *)
      ; Callq, [Imm (Lbl "fib")]
      ; Retq, []
      ]
    ]
  in

  [ ("fib1", (program_test (fib 1L) 1L));
    ("fib2", (program_test (fib 2L) 2L));
    ("fib5", (program_test (fib 5L) 8L));
    ("fib19", (program_test (fib 19L) 6765L));
  ]

(* * *)

let rzajac_tests =
  (*
    Authors: Robert Zajac (rzajac), Sumit Shyamsukha (ssumit)
      The triangle number problem is as follows:
      Given three integers >= 1 : a, b, c, determine if the integers form an
      upright equilateral triangle in the triangle below.
                                    1
                                  2   3
                                4   5   6
                              7   8   9   10
                            11  12  13  14  15
                                  ...
    For example, {5, 12, 14} form an upright equilateral triangle (the "distance"
    between any two numbers is exactly 2) but {5, 9, 12} do not. Assume the inputs
    are given in sorted order. Rax should contain 1 if the triple forms an upright
    equilateral triangle and 0 otherwise.
   
    Algorithm:
      - Find the level of the smallest number (a) using the following subroutine:
        + Go through the triangle numbers (1, 3, 6...) and find the first triangle
        number larger than a, keeping track of what level you are at. The level of
        this triangle number is the level of a.
      - Keep "left" and "right" pointers. Increment "left" by "level" (from the
        subroutine) and "right" by "level + 1". Update "level" to be the level you
        are now at.
      - If left == b and right == c then a,b,c form an upright equilateral
      triangle. Otherwise, if it's ever the case that left > b or right > c, then
      a,b,c do not form an upright equilateral triangle.
  *)
  let triangle (a : int) (b : int) (c : int) : prog =
    [ text "find_level"
      [ Cmpq, [~$a; ~%R11]
      ; J Ge, [~$$"find_horizontal_loop"]
      ; Addq, [~%R12; ~%R11]
      ; Incq, [~%R12]
      ; Incq, [~%R10]
      ; Jmp,  [~$$"find_level"]
      ]
    ; text "find_horizontal_loop"
      [ Addq, [~%R10; ~%R08]
      ; Addq, [~%R10; ~%R09]
      ; Incq, [~%R09]
      ; Movq, [~%R08; ~%R14]
      ; Subq, [~$b; ~%R14]
      ; Movq, [~%R14; ~%R11]
      ; Movq, [~%R09; ~%R14]
      ; Subq, [~$c; ~%R14]
      ; Movq, [~%R14; ~%R12]
      ; Cmpq, [~$0; ~%R11]
      ; J Gt, [~$$"failure"]
      ; Cmpq, [~$0; ~%R12]
      ; J Gt, [~$$"failure"]
      ; Addq, [~%R11; ~%R12]
      ; Cmpq, [~$0; ~%R12]
      ; J Gt, [~$$"failure"]
      ; J Eq, [~$$"succeed"]
      ; J Lt, [~$$"update"]
      ]
    ; text "failure"
      [ Movq, [~$0; ~%Rax]
      ; Retq, []
      ]
    ; text "succeed"
      [ Movq, [~$1; ~%Rax]
      ; Retq, []
      ]
    ; text "update"
      [ Incq, [~%R10]
      ; Jmp, [~$$"find_horizontal_loop"]
      ]
    ; gtext "main"
      [ Movq, [~$a; ~%R08]
      ; Movq, [~$a; ~%R09]
      ; Movq, [~$1; ~%R10]
      ; Movq, [~$1; ~%R11]
      ; Movq, [~$2; ~%R12]
      ; Callq, [~$$"find_level"]
      ; Retq, []
      ]
    ]
  in

  [ ("triangle (1,2,3) = 1", program_test (triangle 1 2 3) 1L);
    ("triangle (2,7,9) = 1", program_test (triangle 2 7 9) 1L);
    ("triangle (6,13,15) = 1", program_test (triangle 6 13 15) 1L);
    ("triangle (3,12,15) = 1", program_test (triangle 3 12 15) 1L);
    ("triangle (5,12,14) = 1", program_test (triangle 5 12 14) 1L);
    ("triangle (6,12,15) = 0", program_test (triangle 6 12 15) 0L);
    ("triangle (1,2,4) = 0", program_test (triangle 1 2 4) 0L);
    ("triangle (1,3,6) = 0", program_test (triangle 1 3 6) 0L);
    ("triangle (1,3,5) = 0", program_test (triangle 1 3 5) 0L);
    ("triangle (6,9,14) = 0", program_test (triangle 6 9 14) 0L);
    ("triangle (5,9,12) = 0", program_test (triangle 5 9 12) 0L);
    ("triangle (1,1,1) = 0", program_test (triangle 1 1 1) 0L);
    ("triangle (1,1,2) = 0", program_test (triangle 1 1 2) 0L);
    ("triangle (1,2,2) = 0", program_test (triangle 1 2 2) 0L);
    ("triangle (1,5,12) = 0", program_test (triangle 1 5 12) 0L);
    ("triangle (1,5,14) = 0", program_test (triangle 1 5 14) 0L);
    ("triangle (1,2,14) = 0", program_test (triangle 1 2 14) 0L);
  ]

(* * *)

let wuwc_tests =
  let bubble (l : int64 list) =
    let len = (List.length l) - 1 in
    [ text "main"
      (*main loop*)
      [ Movq,  [~$$"array"; ~%R10]
      ; Movq,  [~$0; ~%R09]
      ; Movq,  [~$1; ~%Rdi]
      ; Jmp, [~$$"bubble"]
      ]
      (*first half of bubble sort, 
        takes the current 2 elements and compares them*)
    ; text "bubble"
      [ Cmpq, [~$len; ~%R09]
      ; J Ge, [~$$"end"]
      ; Movq, [Ind2 (R10); ~%R11]
      ; Movq, [Ind3 (Lit 8L, R10); ~%R12]
      ; Cmpq, [~%R12; ~%R11]
      ; J Gt, [~$$"exchange"]
      ; Jmp,  [~$$"bubble_2"]
      ]
      (*if inversion, set R0 as false and exchange them*)
    ; text "exchange"
      [ Movq, [~$0; ~%Rdi] (*R12 < R11 at this point*)
      ; Movq, [~%R12; Ind2(R10)] (*Move R12 to memory pos of R10*)                
      ; Movq, [~%R11; Ind3(Lit 8L, R10)] (*R11 to R10+1*)
      ; Jmp,  [~$$"bubble_2"]
      ]
      (*puts elements back into place, now we know that R4 <= R5, 
        so put them in order, then continues loop*)
    ; text "bubble_2"
      [ Addq, [~$8; ~%R10] (*next memory address, increment by 8*) 
      ; Addq, [~$1; ~%R09]
      ; Jmp,  [~$$"bubble"]
      ]
      (*go here after each iteration to see if array is sorted. if so, return*)
    ; text "end"
      [ Cmpq, [~$1; ~%Rdi]
      ; J Eq, [~$$"return"]
      ; Movq, [~$0; ~%R09]
      ; Movq, [~$$"array"; ~%R10]
      ; Movq, [~$1; ~%Rdi]
      ; Jmp,  [~$$"bubble"]
      ]
      (*return*)
    ; text "return"
      [ Movq, [~$$"array"; ~%R10]
      ; Retq, []
      ]
      (*hardcode data in*)
    ; data "array"
      (List.map (fun x -> (Quad (Lit x))) l)          
    ]
  in

  (* Map position of X86lite address into an OCaml array index,
     throw an exception if the address is not within legal address space. *)
  let addr (pos : quad) : int = 
    begin match map_addr pos with
      | Some x -> x
      | None -> raise X86lite_segfault
    end
  in

  let bubblesort_test l () =
    let m = load (assemble (bubble l)) in
    let m' = while m.regs.(rind Rip) <> exit_addr do step m done; m in
    let rec get_list (m : mach) (address : int64) (len : int) : int64 list =
      let open Array in 
      if len = 0 then []
        else (int64_of_sbytes (to_list (sub m.mem (addr address) 8)) 
             :: get_list m (Int64.add address 8L) (len - 1)) in
    let res = get_list (m') (m.regs.(rind R10)) (List.length l) in 
    let ans = List.sort Int64.compare l in
    let rec print_list (l : int64 list) : unit =
      begin match l with
        | (x :: tl) -> Printf.printf "%Ld " x; print_list tl
        | _ -> print_string "\n"
      end in
    if res <> ans
    then (print_string "res: "; print_list res; print_string "ans: "; 
          print_list ans; failwith "Bubble sort failed")
    else ()
  in

  [ ("One element", bubblesort_test [1L]);
    ("Sorted1    ", bubblesort_test [1L; 3L]);
    ("Sorted2    ", bubblesort_test [1L; 3L; 4L; 5L; 7L; 7L; 8L; 9L]);
    ("No elements", bubblesort_test []);
    ("Two element", bubblesort_test [2L; 1L]);
    ("Distinct   ", bubblesort_test [5L; 6L; 3L; 82L]);
    ("Repeated   ", bubblesort_test [6L; 21L; 6L; 573L; 21L; 3L])
  ]

let tests = alexpe_tests
          @ apoth_tests
          @ burowski_tests
          (* @ chmart_tests *)
          @ clancyt_tests
          @ davidcao_tests
          @ eneyman_tests
          @ hand_tests
          @ hta_tests
          @ hunterl_tests
          @ jaust_tests
          @ keweiqu_tests
          (* @ kyim_tests *)
          @ maale_tests
          (* @ minski_tests *)
          @ olekg_tests
          @ rzajac_tests
          @ wuwc_tests

let other_team_tests = GradedTest("OtherTeamTests (Spring 2017) (manual)", 10, tests)
