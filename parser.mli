
(* The type of tokens. *)

type token = 
  | VAL of (int)
  | TEST
  | R_SRC
  | R_PRN
  | R_OPR
  | RCP
  | PRN
  | PLS
  | OR
  | OPER of (string)
  | OBS
  | NUM of (int)
  | MLT
  | L_SRC
  | L_PRN
  | L_OPR
  | ITM of (string)
  | FRK
  | FOR
  | EOF
  | CYC
  | CNC_R
  | CNC_L

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)

val code: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Env.command list)

val buffer: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Env.command)
