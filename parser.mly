%{
(* open Syntax *)
open Env
(*
type operators = ((int list) -> (int list)) State.t
let ax_ope = [
  "warp"  (* \ ??A->num,??A *);
  "intr"  (* ??A->??B,??A \ ??B *);
  "id"  (* ??A \ ??A *)
]
*)
%}

%token L_INGR R_INGR RECIPE DIREC
%token <string> ITEM OPER
%token <int> NUM VAL
%token PLUS MULT
%token EOF

%start buffer
%type <Env.command> buffer
%%
buffer:
  | command EOF { $1 }

  ;
command:
  | RECIPE sign DIREC operator { $2.ope<-$4;$2 }
  | RECIPE operator DIREC sign { $4.ope<-$2;$4 }
  ;
sign:
  | l_ingr    { {src=$1;dest=[];ope=Ascii ""} }
  | r_ingr  { {src=$1;dest=[];ope=Ascii ""} }
  | l_ingr item_list  { {src=$1;dest=$2;ope=Ascii ""} }
  | item_list r_ingr  { {src=$2;dest=$1;ope=Ascii ""} }
  ;
l_ingr:
  | L_INGR  { [] }
  | item_list L_INGR  { $1 }
  ;
r_ingr:
  | R_INGR  { [] }
  | R_INGR item_list  { $2 }

item_list:
  | ITEM   { [$1] }
  | ITEM item_list { ($1::$2) }
  ;

operator:
(*  | OPER  { (Env.pnt ("OPER"^$1));Ascii $1 }*)
  | calc_list { Calc $1 }
  ;
calc_list:
  | calc  { [$1] }
  | calc calc_list { $1::$2 }
  ;
calc:
  | PLUS calc calc { Plus ($2,$3) }
  | MULT calc calc  { Mult ($2,$3) }
  | VAL { Val $1 }
  | NUM { Num $1 }
