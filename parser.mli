
(* The type of tokens. *)

type token = 
  | VAL of (string)
  | R_INGR
  | R_DIREC
  | RECIPE
  | PLUS
  | OPER of (string)
  | NUM of (int)
  | MULT
  | L_INGR
  | L_DIREC
  | ITEM of (string)
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val buffer: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Env.command)
