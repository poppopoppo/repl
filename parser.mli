
(* The type of tokens. *)

type token = 
  | VAL of (int)
  | SUM
  | SPP
  | R_SRC
  | R_PRN
  | R_OPR
  | RPL
  | RCP
  | PRN
  | PLS
  | OPER of (string)
  | NUM of (int)
  | MLT
  | L_SRC
  | L_PRN
  | L_OPR
  | ITM of (string)
  | EOF
  | ANH

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val code: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Env.command list)

val buffer: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Env.command)
