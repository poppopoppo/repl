
(* The type of tokens. *)

type token = 
  | VAL of (int)
  | R_INGR
  | RECIPE
  | PLUS
  | OPER of (string)
  | NUM of (int)
  | MULT
  | L_INGR
  | ITEM of (string)
  | EOF
  | DIREC

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val buffer: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Env.command)
