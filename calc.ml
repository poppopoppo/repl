let pnt s =
  print_string (s^"\n");flush stdout
let pnt_line () =
  pnt "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~"
let gl_st = ref @@ Env.new_state ()
let gl_src:(string option ref) = ref None
let gl_dst:(string option ref) = ref None
let string_to_command s = Parser.buffer Lexer.token s
let _ =

  let _ = Arg.parse
      [("-s",Arg.String
          (fun s -> gl_src := (Some s)),"src file");
       ("-d",Arg.String (fun s -> gl_dst := (Some s)),"dst file")]
      (fun _ -> ()) "-s src_filename -d dst_filename" in

  let _ = match !gl_src with
  | None -> ()
  | Some s ->
    gl_st := Env.load s in
  let _ = Sys.signal Sys.sigint
      (Signal_handle
         (fun _ -> match !gl_dst with
            | None -> ();exit 1
            | Some s -> Env.save !gl_st s;exit 1)) in
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
