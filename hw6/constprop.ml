open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)

 let rec eval_binop (bop:bop) (c1:SymConst.t) (c2:SymConst.t) : SymConst.t =
  match (bop, c1, c2) with
  | (Add, Const i1, Const i2) -> Const (Int64.add i1 i2)
  | (Sub, Const i1, Const i2) -> Const (Int64.sub i1 i2)
  | (Mul, Const i1, Const i2) -> Const (Int64.mul i1 i2)
  | (Shl, Const i1, Const i2) -> Const (Int64.shift_left i1 (Int64.to_int i2))
  | (Lshr, Const i1, Const i2) -> Const (Int64.shift_right_logical i1 (Int64.to_int i2))
  | (Ashr, Const i1, Const i2) -> Const (Int64.shift_right i1 (Int64.to_int i2))
  | (And, Const i1, Const i2) -> Const (Int64.logand i1 i2)
  | (Or, Const i1, Const i2) -> Const (Int64.logor i1 i2)
  | (Xor, Const i1, Const i2) -> Const (Int64.logxor i1 i2)
  | _ -> failwith "eval_binop: invoked with non-const arguments"

let rec eval_cnd (cond:cnd) (c1:SymConst.t) (c2:SymConst.t) : SymConst.t =
  match (cond, c1, c2) with
  | (Eq, Const i1, Const i2) -> if i1 = i2 then Const 1L else Const 0L
  | (Ne, Const i1, Const i2) -> if i1 != i2 then Const 1L else Const 0L
  | (Sgt, Const i1, Const i2) -> if i1 > i2 then Const 1L else Const 0L
  | (Sge, Const i1, Const i2) -> if i1 >= i2 then Const 1L else Const 0L
  | (Slt, Const i1, Const i2) -> if i1 < i2 then Const 1L else Const 0L
  | (Sle, Const i1, Const i2) -> if i1 <= i2 then Const 1L else Const 0L
  | _ -> failwith "eval_cnd: invoked with non-const arguments"

let insn_flow (u,i:uid * insn) (d:fact) : fact =
  match i with
  | Binop (bop, _, op1, op2) ->
    begin match (op1, op2) with
    | (Const c1, Const c2) -> UidM.add u (eval_binop bop (Const c1) (Const c2)) d
    | (Const c1, Id id)
    | (Const c1, Gid id) ->
      let is_const = UidM.find_opt id d in
      begin match is_const with
      | Some (Const c2) -> UidM.add u (eval_binop bop (Const c1) (Const c2)) d
      | Some (NonConst) -> UidM.add u SymConst.NonConst d
      | Some (UndefConst) -> UidM.add u SymConst.UndefConst d
      | None -> d
      end
    | (Id id, Const c1)
    | (Gid id, Const c1) -> 
      let is_const = UidM.find_opt id d in
      begin match is_const with
      | Some (Const c2) -> UidM.add u (eval_binop bop (Const c2) (Const c1)) d
      | Some (NonConst) -> UidM.add u SymConst.NonConst d
      | Some (UndefConst) -> UidM.add u SymConst.UndefConst d
      | None -> d
      end
    | (Id id1, Id id2)
    | (Id id1, Gid id2)
    | (Gid id1, Id id2)
    | (Gid id1, Gid id2) ->
      let id1_is_const = UidM.find_opt id1 d in
      let id2_is_const = UidM.find_opt id2 d in
      begin match (id1_is_const, id2_is_const) with
      | (Some (Const c1), Some (Const c2)) -> UidM.add u (eval_binop bop (Const c1) (Const c2)) d
      | (Some (NonConst), _) 
      | (_, Some (NonConst)) -> UidM.add u SymConst.NonConst d
      | (Some (UndefConst), _) 
      | (_, Some (UndefConst)) -> UidM.add u SymConst.UndefConst d
      | (None, _)
      | (_, None) -> d 
      end
    | _ -> failwith "insn_flow: invalid binop arguments"
    end
  | Icmp (cond, _, op1, op2) ->
    begin match (op1, op2) with
    | (Const c1, Const c2) -> UidM.add u (eval_cnd cond (Const c1) (Const c2)) d
    | (Const c1, Id id)
    | (Const c1, Gid id) ->
      let is_const = UidM.find_opt id d in
      begin match is_const with
      | Some (Const c2) -> UidM.add u (eval_cnd cond (Const c1) (Const c2)) d
      | Some (NonConst) -> UidM.add u SymConst.NonConst d
      | Some (UndefConst) -> UidM.add u SymConst.UndefConst d
      | None -> d 
      end
    | (Id id, Const c1)
    | (Gid id, Const c1) -> 
      let is_const = UidM.find_opt id d in
      begin match is_const with
      | Some (Const c2) -> UidM.add u (eval_cnd cond (Const c2) (Const c1)) d
      | Some (NonConst) -> UidM.add u SymConst.NonConst d
      | Some (UndefConst) -> UidM.add u SymConst.UndefConst d
      | None -> d 
      end
    | (Id id1, Id id2)
    | (Id id1, Gid id2)
    | (Gid id1, Id id2)
    | (Gid id1, Gid id2) ->
      let id1_is_const = UidM.find_opt id1 d in
      let id2_is_const = UidM.find_opt id2 d in
      begin match (id1_is_const, id2_is_const) with
      | (Some (Const c1), Some (Const c2)) -> UidM.add u (eval_cnd cond (Const c1) (Const c2)) d
      | (Some (NonConst), _) 
      | (_, Some (NonConst)) -> UidM.add u SymConst.NonConst d
      | (Some (UndefConst), _) 
      | (_, Some (UndefConst)) -> UidM.add u SymConst.UndefConst d
      | (None, _)
      | (_, None) -> d 
      end
    | _ -> failwith "insn_flow: invalid cnd arguments"
    end
  | Store _ 
  | Call (Void, _, _) -> d
  | _ -> UidM.add u SymConst.NonConst d

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact = 
      let merge_f _ v1 v2 = 
        match (v1, v2) with
        | (Some (SymConst.Const i1), Some (SymConst.Const i2)) -> 
          if i1 = i2 then Some (SymConst.Const i1) else Some SymConst.NonConst
        | (Some SymConst.UndefConst, _) 
        | (_, Some SymConst.UndefConst) -> Some SymConst.UndefConst
        | (Some SymConst.NonConst, _)
        | (_, Some SymConst.NonConst) -> Some SymConst.NonConst 
        | None, None -> None
        | None, Some t -> Some t
        | Some t, None -> Some t
      in
      List.fold_left (UidM.merge merge_f) UidM.empty ds
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    failwith "Constprop.cp_block unimplemented"
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
