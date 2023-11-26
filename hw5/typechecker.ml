open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  begin match (t1, t2) with
  | (TInt, TInt) -> true
  | (TBool, TBool) -> true
  | (TNullRef rt1, TNullRef rt2)
  | (TRef rt1, TRef rt2)
  | (TRef rt1, TNullRef rt2) -> subtype_ref c rt1 rt2
  | _ -> false
 end
  (* failwith "todo: subtype" *)

(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  begin match (t1, t2) with
  | (RString, RString) -> true
  | (RArray t1, RArray t2) -> t1 == t2
  | (RStruct id1, RStruct id2) -> 
    let fields1 = lookup_struct id1 c in
    let fields2 = lookup_struct id2 c in
    if (List.length fields1) < (List.length fields2) then false
    else
      let compare_nth_field (i:int) (f:field) : bool = (f = (List.nth fields1 i)) in
      List.fold_left (&&) true (List.mapi compare_nth_field fields2)
  | (RFun (args1, rt1), RFun (args2, rt2)) -> 
    if (List.length args1) != (List.length args2) then false
    else 
      let subtype_nth_arg (b:bool) (t : ty * ty) : bool =
        let (t1, t2) = t in
        b && (subtype c t2 t1) in (* argument types are contravariant! p12, lec16 *)
      let args = List.fold_left subtype_nth_arg true (List.combine args1 args2) in
      args && (subtype_return c rt1 rt2)
  | _ -> false
  end

(* Decides whether H |-rt rt1 <: rt2 *)
and subtype_return (c : Tctxt.t) (t1 : Ast.ret_ty) (t2 : Ast.ret_ty) : bool =
  begin match (t1, t2) with
  | (RetVoid, RetVoid) -> true
  | (RetVal t1, RetVal t2) -> subtype c t1 t2
  | _ -> false
  end


(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well-formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  begin match t with
  | TInt | TBool -> ()
  | TRef rt -> typecheck_ref l tc rt
  | TNullRef rt -> typecheck_ref l tc rt
  end

and typecheck_ref (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.rty) : unit =
  begin match t with
  | RString -> ()
  | RArray t -> typecheck_ty l tc t
  | RStruct id -> 
    if (List.mem_assoc id tc.structs) then ()
    else type_error l ("Undefined struct type " ^ id)
  | RFun (args, ret) -> 
    let typecheck_nth_arg (t : ty) : unit = typecheck_ty l tc t in
    List.iter typecheck_nth_arg args;
    typecheck_return l tc ret
  end

and typecheck_return (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ret_ty) : unit = 
  begin match t with
  | RetVoid -> ()
  | RetVal ty -> typecheck_ty l tc ty
  end

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oad.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  begin match e.elt with
  | CNull rty -> typecheck_ty e c (TRef rty); TNullRef rty
  | CBool _ -> TBool
  | CInt _ -> TInt
  | CStr _ -> TRef RString
  | Id id -> 
    let t = lookup_option id c in
    begin match t with
    | Some ty -> ty
    | None -> type_error e ("typecheck_exp: " ^ id ^ " undefined")
    end
  | CStruct (sid, given_fs) -> 
    begin match Tctxt.lookup_struct_option sid c with
    | Some (fs_ctxt) -> 
      let cmp_field_id (x1 : id * 'a) (x2 : id * 'b) : int =
        compare (fst x1) (fst x2) in
      let given_fs_sorted = List.sort cmp_field_id (List.map (fun (x:id * exp node) : (id * Ast.ty) -> (fst x, typecheck_exp c (snd x))) given_fs) in
      let decompose_record (f:field) : (id * Ast.ty) = (f.fieldName, f.ftyp) in
      let ctxt_fs_sorted = List.sort cmp_field_id (List.map decompose_record fs_ctxt) in
      
      (* compare if the id fields of both lists equal, if not raise error *)
      if (not (List.equal (=) (fst (List.split given_fs_sorted)) (fst (List.split ctxt_fs_sorted)) )) then type_error e ("typecheck_exp: " ^ sid ^ "field name mismatch")
      else 
        (* compare if the types of both lists equal, if not raise error *)
        let cmp_field_type (x1 : id * Ast.ty) (x2 : id * Ast.ty) : bool =
          subtype c (snd x1) (snd x2) in
        if (not (List.for_all2 cmp_field_type given_fs_sorted ctxt_fs_sorted)) then type_error e ("typecheck_exp: " ^ sid ^ "field type mismatch")
        else TRef (RStruct sid)
    | None -> type_error e ("typecheck_exp: " ^ sid ^ "not a struct")
    end
  | Proj (e, id) ->
    let t = typecheck_exp c e in
    begin match t with
    | TRef (RStruct sid) -> 
      begin match Tctxt.lookup_field_option sid id c with
      | Some ty -> ty
      | None -> type_error e ("typecheck_exp: " ^ id ^ "not a field")
      end
    | _ -> type_error e ("typecheck_exp: " ^ "not a struct")
    end
  | Call (fe, es) ->
    let fty = typecheck_exp c fe in
    begin match fty with
    | TRef (RFun (atys, retty)) ->
      if (List.length atys) != (List.length es) then type_error e ("typecheck_exp: " ^ "argument number mismatch")
      else
        let cmp_arg_type (t : ty) (x2 : exp node) : bool =
          let t' = typecheck_exp c x2 in
          subtype c t' t in
        if (not (List.for_all2 cmp_arg_type atys es)) then type_error e ("typecheck_exp: " ^ "argument type mismatch")
        else (fun (RetVal t) -> t) retty
    | _ -> type_error e ("typecheck_exp: " ^ "not a function")
    end
  | _ -> failwith "typecheck_exp: to do"
  end 

(* statements --------------------------------------------------------------- *)

let typecheck_decl (tc: Tctxt.t) (s: Ast.vdecl) : Tctxt.t =
  let id, e = s in
  if (List.mem_assoc id tc.locals) then type_error (no_loc s) ("typecheck_decl: " ^ id ^ "previously redefined")
  else 
    let t = typecheck_exp tc e in
    Tctxt.add_local tc id t 

(* Typecheck a statement 
   This function should implement the statement typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement
     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entier conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  begin match s.elt with
  | Ret None -> if to_ret = RetVoid then (tc, true) else type_error s ("Return type mismatch, expected" ^ (ml_string_of_ret_ty to_ret) ^ "got void")
  | Ret (Some e) -> 
    let t' = typecheck_exp tc e in
    begin match to_ret with
    | RetVal t -> if subtype tc t' t then (tc, true)
      else type_error s ("Subtype check failed, to_ret:" ^ (ml_string_of_ret_ty to_ret) ^ " t': " ^ (ml_string_of_ty t'))
    | _ -> type_error s ("Return type mismatch, expected" ^ (ml_string_of_ret_ty to_ret) ^ "got " ^ (ml_string_of_ty t'))
    end
  | Decl vd -> (typecheck_decl tc vd, false)
  | Assn (e1, e2) ->
    (* examine the validity of lhs. The check is a two-fold:
       1. first check if lhs is Id. If so, check if it is in local context. If not,
        check if it is a global function id. Only when the id is either in local context, or in global but not a function id can we proceed.
       2. If lhs is not Id, we only check if the toplevel type belongs local context. If not, raise a type error.  *)
    begin match e1.elt with
    | Id id -> 
      begin match lookup_local_option id tc with
      | Some t -> ()
      | None -> begin match lookup_global_option id tc with
        | None -> type_error e1 ("typecheck_stmt: " ^ id ^ "undefined")
        | Some t -> begin match t with
          | TRef (RFun _) -> type_error e1 ("typecheck_stmt: " ^ id ^ "is a function")
          | _ -> ()
          end
        end
      end
    | Proj (e, _) -> 
      let toplevel_id = 
        begin match e.elt with
        | Id id -> id
        | _ -> failwith "typecheck_stmt: tried to project from non-id exp"
        end in
        begin match lookup_local_option toplevel_id tc with
        | Some _ -> () (* toplevel_id is defined in local. Note here we don't check if the toplevel type is really a struct. Are we hoping the struct type check will be implemented in corresponding cases in typecheck_exp? *)
        (* TODO: does Oat v2 allow modifying fields of global struct variables? *)
        | None -> begin match lookup_global_option toplevel_id tc with
          | None -> type_error e1 ("typecheck_stmt: " ^ toplevel_id ^ "undefined")
          | Some _ -> ()
          end
        end
    | Index (e, _) ->
      let toplevel_id = 
        begin match e.elt with
        | Id id -> id
        | _ -> failwith "typecheck_stmt: tried to index from non-id exp"
        end in
        begin match lookup_local_option toplevel_id tc with
        | Some _ -> () (* toplevel_id is defined in local *)
        | None -> begin match lookup_global_option toplevel_id tc with
          | None -> type_error e1 ("typecheck_stmt: " ^ toplevel_id ^ " undefined")
          | Some _ -> ()
          end
        end
    | _ -> type_error e1 "typecheck_stmt: invalid lhs"
    end;
    (* not we proceed with a valid lhs, by performing subtyping checks *)
    let t = typecheck_exp tc e1 in
    let t' = typecheck_exp tc e2 in
    if subtype tc t' t then (tc, false)
    else type_error s ("Subtype check failed, lhs is of type:" ^ (ml_string_of_ty t) ^ " t': " ^ (ml_string_of_ty t'))
    
  | _ -> failwith "typecheck_stmt: to do"
  end 


(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let rec check_dup_args args = 
  match args with
  | [] -> false
  | (h_ty, h_id) :: t -> (List.exists (fun (ty, id) -> id = h_id) t) || check_dup_args t

let typecheck_block (tc : Tctxt.t) (ss:Ast.stmt node list) (to_ret:ret_ty) (l : 'a Ast.node) : bool =
  let rec typecheck_block_stmt (tc: Tctxt.t) (ss': Ast.stmt node list) (to_ret:ret_ty) : Tctxt.t * bool =
    begin match ss' with
    | [] -> type_error l "Empty block"
    | [s] -> typecheck_stmt tc s to_ret
    | s :: t -> let (tc', b) = typecheck_stmt tc s to_ret in
      if b then type_error l "Block returns in the middle"
      else typecheck_block_stmt tc' t to_ret
    end in
  let (_, b) = typecheck_block_stmt tc ss to_ret in b
  

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)
let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  if check_dup_args f.args
  then type_error l ("Repeated args in " ^ f.fname)
  else 
    let add_arg_to_local (tc: Tctxt.t) (arg: Ast.ty * Ast.id) : Tctxt.t = 
      let (ty, id) = arg in
      add_local tc id ty in
    let tc' = List.fold_left add_arg_to_local tc f.args in
    let returns = typecheck_block tc' f.body f.frtyp l in
    if not returns then type_error l ("Function " ^ f.fname ^ " does not return")

    (* let new_tc = List.fold_left (fun tc (ty, id) -> add_local tc id ty) tc f.args in *)


(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'H'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)

let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  let add_decl (tc: Tctxt.t) (d: Ast.decl) : Tctxt.t =
    begin match d with
    | Gtdecl ({elt=(id, fields)} as l) -> 
      if (List.mem_assoc id tc.structs) then type_error l ("Duplicate struct type " ^ id)
      else 
        if check_dups fields then type_error l ("Repeated fields in " ^ id) 
        else add_struct tc id fields
    | _ -> tc
    end in
  List.fold_left add_decl Tctxt.empty p 

let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let add_decl (tc: Tctxt.t) (d: Ast.decl) : Tctxt.t =
    begin match d with
    | Gfdecl ({elt=f} as l) -> 
      if (List.mem_assoc f.fname tc.globals) then type_error l ("Duplicate function " ^ f.fname)
      else 
        List.iter (fun (ty, _) -> typecheck_ty l tc ty) f.args;
        let ids = List.map fst f.args in
        add_global tc f.fname (TRef (RFun (ids, f.frtyp)))
    | _ -> tc
    end in
  List.fold_left add_decl tc p

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let rec contains_global (e: exp node) : bool =
    begin match e.elt with
    | CNull _ | CBool _ | CInt _ | CStr _ -> false
    | Id id -> 
      let ty = lookup_global_option id tc in
      begin match ty with
      | Some (TRef (RFun _)) -> false
      | None -> false
      | _ -> true
      end
    | CArr (_, es) -> List.exists contains_global es
    | CStruct (_, fs) -> List.exists (fun (_, e) -> contains_global e) fs
    | _ -> failwith "contains_global: invalid exp"
    end
  in
  let add_decl (tc: Tctxt.t) (d: Ast.decl) : Tctxt.t =
    begin match d with
    | Gvdecl ({elt={name; init}} as l) ->
      if (List.mem_assoc name tc.globals) then type_error l ("Duplicate global " ^ name)
      else 
        if contains_global init then type_error l ("Global initializer contains global" ^ name)
        else 
          let ty = typecheck_exp tc init in
          add_global tc name ty
    | _ -> tc
    end in
  List.fold_left add_decl tc p


(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p
