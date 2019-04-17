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

%token L_SRC R_SRC RCP L_PRN R_PRN R_OPR L_OPR PRN
%token OR CYC FOR FRK OBS CNC_L CNC_R TEST
%token <string> ITM OPER
%token <int> NUM VAL
%token PLS MLT
%token EOF

%left PLS
%left MLT
%left CNC_L CNC_R
%start buffer code program
%type <Env.command> buffer
%type <Env.command list> code
%type <unit> program

%%
code:
  | command EOF { (* [$2] *) [{src=[];dest=[];ope=[]}] }
  | command code { (* $2::$3 *) [{src=[];dest=[];ope=[]}]}
  ;
buffer:
  | command EOF { {src=[];dest=[];ope=[]} }
(*  | flow EOF { $1 } *)
  ;
abrb:
  | { }
  ;
program:
  | fork {}
  ;
prg_list:
  | program_command EOF {}
  | program_command prg_list {}
  ;
program_command:
  | RCP command_std {}
  | observe {}
  | fork {}
  | cycle {}
  ;
observe:
  | OBS ITM obs_list {}
  ;
obs_list:
  | or_atom prg_list {}
  | or_atom prg_list obs_list {}
  ;

fork:
  | TEST {}
  | FRK prg_list forks  {}
(*  | FRK fork_atom prg_list {}
  | FRK fork_atom forks  {}
  *)
  ;
forks:
  | fork_proc {}
  | fork_proc forks {}
  ;
fork_proc:
  | FOR {}
  | FOR prg_list {}
  | FOR fork_atom prg_list {}
  ;
cycle:
  | CYC fork_atom {}
  ;
command:
  | RCP command_std  {}
  | OBS command_observe  {}
  | command_fork  {}
  | CYC command_cycle  {}
  ;
command_std:
  | L_SRC   {}
  | R_SRC {}
  | items L_SRC {}
  | R_SRC items {}
  | L_SRC m_ope items {}
  | L_SRC items r_ope {}
  | l_ope items R_SRC {}
  | items m_ope R_SRC {}
  | items m_ope L_SRC items {}
  | items m_ope R_SRC items {}
  | l_ope items L_SRC items {}
  | l_ope items R_SRC items {}
  | items L_SRC m_ope items {}
  | items R_SRC m_ope items {}
  | items L_SRC items r_ope {}
  | items R_SRC items r_ope {}
  ;
items:
  | ITM   { [$1] }
  | ITM items { ($1::$2) }
  ;
m_ope:
  | ope_list L_OPR  {}
  ;
r_ope:
  | R_OPR ope_list  {}
  | R_OPR ope_list L_OPR  {}
  ;
l_ope:
  | ope_list L_OPR  {}
  | R_OPR ope_list L_OPR  {}
  ;
ope_list:
  | ope_atom  {}
  | ope_atom ope_list {}
  ;
(*
  | src_dst { $1 }
  | dst_src { $1 }
  ;
  *)
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
command_observe:
  | ITM cmd_obs_list  {}
  ;
cmd_obs_list:
  | or_atom  {}
  | or_atom cmd_obs_list  {}
  ;
or_atom:
  | OR  {}
  | OR R_OPR OPER  {}
  | OR R_OPR OPER L_OPR  {}
  | OR items R_OPR OPER  {}
  | OR items R_OPR OPER L_OPR  {}
  | OR R_OPR OPER L_OPR items  {}
  ;
command_fork:
  | FRK fork_list  {}
  | FRK fork_atom  {}
  | FRK fork_atom fork_list  {}
  ;
fork_list:
  | FOR  {}
  | FOR fork_atom  {}
  | FOR fork_list  {}
  | FOR fork_atom fork_list  {}
  ;
fork_atom:
  | items R_OPR OPER  {}
  | items R_OPR OPER L_OPR  {}
  | items  {}
  | R_OPR OPER L_OPR items  {}
  | items L_SRC items R_OPR OPER  {}
  ;
command_cycle:
  | items R_OPR OPER  {}
  | items R_OPR OPER L_OPR  {}
  | R_OPR OPER L_OPR  {}
  ;
ope_atom:
  | calc { Calc $1 }
  ;
calc:
  | PRN { Cst 0 }
  | calc CNC_L calc { Cst 0 }
  | calc CNC_R calc { Cst 0 }
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
