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

%token L_SRC R_SRC RCP L_PRN R_PRN L_OPR R_OPR PRN ANH RPL SPP SUM
%token <string> ITM OPER
%token <int> NUM VAL
%token PLS MLT
%token EOF

%left PLS
%left MLT
%start buffer code
%type <Env.command> buffer
%type <Env.command list> code

%%
(*
program:
  |
*)
code:
  | RCP command EOF { [$2] }
  | RCP command code { $2::$3 }
  ;
buffer:
  | RCP  command EOF { $2 }
(*  | flow EOF { $1 } *)
  ;
command:
  (*
    § o « s ⊢ d
    § o « d ⊣ s
    § d » o ⊣ s
    § s » o ⊢ d

    § s ⊢ d » o
    § s ⊢ o « d

    § d ⊣ s » o
    § d  ⊣ o « s
  *)
  | operator L_OPR signe  { ($3.ope<-$1;$3) }
  | R_OPR operator r_src  { {src=$3;dest=[];ope=$2} }
  | item_list R_OPR operator r_src  { {src=$4;dest=$1;ope=$3} }
  | R_OPR operator r_dst  { {src=[];dest=$3;ope=$2} }
  | item_list R_OPR operator r_dst  { {src=$1;dest=$4;ope=$3} }
  | l_src R_OPR operator  { {src=$1;dest=[];ope=$3} }
  | l_src item_list R_OPR operator  { {src=$1;dest=$2;ope=$4} }
  | l_src operator L_OPR  { {src=$1;dest=[];ope=$2} }
  | l_src operator L_OPR item_list { {src=$1;dest=$4;ope=$2} }
  | l_dst R_OPR operator  { {src=[];dest=$1;ope=$3} }
  | l_dst item_list R_OPR operator  { {src=$2;dest=$1;ope=$4} }
  | l_dst operator L_OPR  { {src=$1;dest=[];ope=$2} }
  | l_dst operator L_OPR item_list  { {src=$1;dest=$4;ope=$2} }
  | l_src R_OPR
  | l_src L_OPR
  | l_src
  | L_OPR l_src
  | r_src R_OPR
  | L_OPR r_src
  | r_src ;
l_dst:
  | R_SRC  { [] }
  | item_list R_SRC  { $1 }
  ;
r_dst:
  | L_SRC  { [] }
  | L_SRC item_list  { $2 }
  ;
signe:
  | l_src    { {src=$1;dest=[];ope=Ascii ""} }
  | r_src   { {src=$1;dest=[];ope=Ascii ""} }
  | l_src item_list  { {src=$1;dest=$2;ope=Ascii ""} }
  | item_list r_src  { {src=$2;dest=$1;ope=Ascii ""} }
  ;
l_src:
  | L_SRC  { [] }
  | item_list L_SRC  { $1 }
  ;
r_src:
  | R_SRC  { [] }
  | R_SRC item_list  { $2 }
  ;
item_list:
  | ITM   { [$1] }
  | ITM item_list { ($1::$2) }
  ;

operator:
(*  | OPER  { (Env.pnt ("OPER"^$1));Ascii $1 }*)
  | calc_list { Calc $1 }
  | PRN     { Prn }
  | ANH { Anh }
  | RPL   { Rpl }
  | SPP     { Spp }
  ;
calc_list:
  | calc  { [$1] }
  | calc calc_list { $1::$2 }
  ;
calc:
  | L_PRN calc R_PRN  { $2 }
  | calc PLS calc { Plus ($1,$3) }
  | calc MLT calc  { Mult ($1,$3) }
  | VAL { Val $1 }
  | NUM { Cst $1 }

(*
flow_def:
  | FLOW RCP  TYPE flow
  ;
flow:
  | L_SRC TYPE R_OPR OPE_NAME
  | R_OPR OPE_NAME L_INGRE TYPE
  | flow_V
  | flow_H
  | flow_Vt
  ;
flow_V:
  | V_PROD TYPE R_OPR OPE_NAME flow_V
  | R_OPR OPE_NAME ISO TYPE
*)
