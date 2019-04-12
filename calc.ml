let pnt s =
  print_string (s^"\n");flush stdout
let pnt_line () =
  pnt "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~"
let gl_st = ref @@ Env.new_state ()
let string_to_command s = Parser.buffer Lexer.token s
let _ =
  while true do
    let _ = pnt_line ();Env.print_st !gl_st in
    let _ = print_string "command # ";flush stdout in
    try
      let s = input_line stdin in
      let lexbuf = Lexing.from_string s in
      let result = string_to_command lexbuf in
      let _  = gl_st := Env.exec_command result (!gl_st) in
      ()
    with
      | Parser.Error -> pnt "error: parsing error"
      | Env.Error s -> pnt s
      | err -> raise err
  done
