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
    | "\194\167"  (* § *) { RECIPE }
    | "\194\187" (* » *)  { L_INGR                            }
    | "\194\171" (* « *)  { R_INGR                                  }
    | "\226\138\163" (* ⊣ *)           { L_DIREC                                }
    | "\226\138\162" (* ⊢ *)           { R_DIREC                                }
    | "\194\191" (* ¿ *) (alnum+ as lxm) { ITEM (lxm)                  }

    | "+" { PLUS }
    | '*' { MULT }
    | "?" (alnum+ as lxm) { VAL(lxm) }
    | (digit+ as lxm)  { NUM (int_of_string lxm) }

(*    | ascii+ as lxm { OPER (lxm)} *)
    | space+        { token lexbuf                         }
    | eof           { EOF                                  }
    | _             { raise (Error (Printf.sprintf
                      "At offset %d: unexpected character.\n"
                      (Lexing.lexeme_start lexbuf))) }
