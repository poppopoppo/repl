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

%token L_INGR R_INGR RECIPE L_DIREC R_DIREC
%token <string> ITEM OPER
%token <int> NUM
%token EOF

%start buffer
%type <Env.command> buffer
%%
buffer:
  | command EOF { $1 }

  ;
command:
  | RECIPE L_INGR L_DIREC operator { {src=[];dest=[];ope=$4} }
  | RECIPE operator R_DIREC R_INGR {  {src=[];dest=[];ope=$2} }
  | RECIPE L_INGR item_list L_DIREC operator { {src=[];dest=$3;ope=$5} }
  | RECIPE item_list L_INGR L_DIREC operator {  {src=$2;dest=[];ope=$5} }
  | RECIPE operator R_DIREC R_INGR item_list {  {src=$5;dest=[];ope=$2} }
  | RECIPE operator R_DIREC item_list R_INGR {  {src=[];dest=$4;ope=$2} }
  | RECIPE item_list L_INGR item_list L_DIREC operator
      {  {src=$2;dest=$4;ope=$6} }
  | RECIPE operator R_DIREC item_list R_INGR item_list
      {  {src=$6;dest=$4;ope=$2} }
  ;
item_list:
  | ITEM   { [$1] }
  | ITEM item_list { ($1::$2) }
  ;
operator:
  | OPER { $1 }
  | OPER operator { ($1^" "^$2) }
  | NUM { (string_of_int $1) }
  ;
