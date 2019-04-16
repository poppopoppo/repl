let pnt s =
  print_string (s^"\n");flush stdout
let pnt_line () =
  pnt "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~"
let gl_src:(string option ref) = ref None
let gl_dst:(string option ref) = ref None
let gl_code:(string option ref) = ref None
let gl_stack:(Env.command list ref) = ref []
let string_to_command s = Parser.buffer Lexer.token s
let exit_calc st dst err =
  (match (st,dst) with
   | (None,None) -> ()
   | (Some _,None) -> ()
   | (None,Some _) -> ()
   | (Some st,Some dst) -> Env.save !st dst);
  match err with
  | None -> exit 0
  | Some e -> raise e

let _ =
  let _ = Arg.parse
      [("-s",Arg.String
          (fun s -> gl_src := (Some s)),"src file");
       ("-d",Arg.String (fun s -> gl_dst := (Some s)),"dst file");
       ("-c",Arg.String (fun s -> gl_code := (Some s)),"code file")]
      (fun _ -> ()) "-s src_filename -d dst_filename -c code" in

  let (gl_src,gl_dst) = (!gl_src,!gl_dst) in
  let gl_st = match gl_src with
    | None -> ref (Env.new_stt ())
    | Some s -> ref (Env.load s) in

  let _ = Sys.signal Sys.sigint
      (Signal_handle (fun _ -> exit_calc (Some gl_st) gl_dst None)) in
  ();
  match !gl_code with
  | None -> ()
  | Some s ->
    let f = open_in s in
    let b = Lexing.from_channel f in
    let cs = Parser.code Lexer.token b in
    gl_stack := cs;
while true do
  try
    let _ = pnt_line ();Env.print_stt !gl_st in
    let _ = print_string "command # ";flush stdout in
    match !gl_stack with
    | [] ->
      let s = input_line stdin in
      let lexbuf = Lexing.from_string s in
      let result = string_to_command lexbuf in
      gl_st := Env.exec_command result (!gl_st);
    | hd::tl ->
      gl_stack := tl;
      gl_st := Env.exec_command hd (!gl_st)
  with
  | Parser.Error -> pnt "error: parsing error"
  | Env.Error s -> pnt s
  | Failure s -> pnt @@ "error:"^s
  | err -> exit_calc (Some gl_st) gl_dst (Some err)
done
