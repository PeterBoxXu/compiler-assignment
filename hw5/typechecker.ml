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
    let compare_nth_field (i:int) (f:field) : bool = (f == (List.nth fields1 i)) in
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
  | CBool _ -> TBool
  | CInt _ -> TInt
  | CStr _ -> TRef RString
  | _ -> type_error e "typecheck_exp: to do"
  end 

(* statements --------------------------------------------------------------- *)

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
  failwith "todo: implement typecheck_stmt"


(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

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
  failwith "todo: typecheck_fdecl"

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
        let args = List.map fst f.args in
        add_global tc f.fname (TRef (RFun (args, f.frtyp)))
    | _ -> tc
    end in
  List.fold_left add_decl tc p

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let rec contains_global (e: exp node) : bool =
    begin match e.elt with
    | CNull _ | CBool _ | CInt _ | CStr _ -> false
    | Id id -> List.mem_assoc id tc.globals
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
        if contains_global init then type_error l ("Global initializer contains global")
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