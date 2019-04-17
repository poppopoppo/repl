{
    open Parser
    exception Error of string
}

let space = [' ' '\t' '\n' '\r']
let digit = ['0'-'9']
let alpha = ['a'-'z' 'A'-'Z']
let ascii = ['a'-'z' 'A'-'Z' '0'-'9' '(' ')' '!' '"' '#'
  '$' '%' '&' '\'' '=' '~' '~' '|' '{' '}' '`' '@' '[' ']'
  '*' '+' ';' ':' '<' '>' ',' '.' '?' '/' '\\' '_' ]
let alnum = digit | alpha

rule token = parse
    | "\194\167"  (* § *) { RCP }

    | "\194\187" (* » *)  { R_OPR                            }
    | "\194\171" (* « *)  { L_OPR                                 }

  (*  ▸◂◀◀ ▶ »«  *)
    | "\226\138\163" (* ⊣ *) { R_SRC                                }
    | "\226\138\162" (* ⊢ *) { L_SRC             }
    | "\194\191" (* ¿ *) (alnum+ as lxm) { ITM (lxm)                  }
    | "PRN" { PRN }
    | "CNC_L" { CNC_L }
    | "CNC_R" { CNC_R }
    | "FRK"   { FRK }
    | "OR"  { OR }
    | "FOR" { FOR }
    | "TEST"  { TEST }
(*    | "\226\138\149"    (* ⊕ *) { SUM } *)
    | '(' { L_PRN }
    | ')' { R_PRN }
    | "+" { PLS }
    | '*' { MLT }
    | "?" (digit+ as lxm) { VAL(int_of_string lxm) }
    | (('-' digit+)|digit+) as lxm  { NUM (int_of_string lxm) }

    | ascii+ as lxm { OPER (lxm)}
    | space+        { token lexbuf                         }
    | eof           { EOF                                  }
    | _             { raise (Error (Printf.sprintf
                      "At offset %d: unexpected character.\n"
                      (Lexing.lexeme_start lexbuf))) }
