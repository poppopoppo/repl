type create_flg = Strict | Forgetable
let create_flg = Forgetable
let debug_flg = ref true
let pnt s = if !debug_flg=true
  then print_string ("pnt:"^s^"\n");flush stdout

module Stt = Map.Make(String)
type lc_stt =
  | Cst of int
  | In of string
  | Out of string
  | Plus of (lc_stt * lc_stt)
  | Mult of (lc_stt * lc_stt)
  | Val of int
  | Rcd of lc_stt list
type ope =
  | Ascii of string
  | Calc of (lc_stt)
  | Prn
  | Anh
  | Rpl
  | Spp
type command = {
  mutable src : string list;
  mutable dest : string list;
  mutable ope : ope list
}
type stt = lc_stt Stt.t
exception Error of string

let string_of_list f l =
  let rec g l =
    match l with
    | [] -> "]"
    | hd::tl -> (f hd)^","^(g tl) in
  "["^(g l)
let rec string_of_lc_stt x =
  match x with
  | Cst i -> "cst:"^(string_of_int i)
  | In s -> "in:"^s
  | Out s -> "out:"^s
  | Plus (a,b) -> (string_of_lc_stt a)^" + "^(string_of_lc_stt b)
  | Mult (a,b) -> (string_of_lc_stt a)^" * "^(string_of_lc_stt b)
  | Val i -> "val:"^(string_of_int i)
  | Rcd l -> string_of_list string_of_lc_stt l
let (gl_st:stt) = Stt.empty
let new_stt () = Stt.empty

let calc (l: (string*lc_stt) list) (c:lc_stt) : lc_stt =
  let error = Error "error:calc: can't calculate non const item" in
  let rec calc_int c =
    match c with
    | Plus (o1,o2) -> (calc_int o1) + (calc_int o2)
    | Mult (o1,o2) -> (calc_int o1) * (calc_int o2)
    | Cst n -> n
    | Val i ->
      (
        let v = snd @@ List.nth l i in
        match v with
        | Cst n -> n
        | _ -> raise error )
    | In _ -> raise error
    | Out _ -> raise error
    | Rcd _ -> raise error (* Rcd (List.map (calc l) l) *) in
  Cst (calc_int c)

let consume (k:string) (m:stt) : (lc_stt * stt) =
  try
    let v = Stt.find k m in
    let m' = Stt.remove k m in
    (v,m')
  with Not_found -> raise @@ Error ("error: ¿"^k^" is not exist")
let create (k,v) m =
  match create_flg with
  | Strict ->
    (try
       let _ = Stt.find k m in
       raise @@ Error ("error: ¿"^k^" is allready exist")
     with Not_found -> Stt.add k v m)
  | Forgetable -> Stt.add k v m
let peek k st =
  try
    let v = Stt.find k st in
    v
  with Not_found -> raise @@ Error ("error:peek: ¿"^k^" is not exist")
let rec consumes src_l st =
  match src_l with
  | [] -> ([],st)
  | i::tl ->
    let (v,st') = consume i st in
    let (l',st'') = consumes tl st' in
    ((i,v)::l',st'')
let rec check l =
  match l with
  | [] -> true
  | (k,_)::tl ->
    match (List.mem_assoc k tl) with
    | true -> false
    | false -> check tl
let creates l m =
  if (check l)
  then
    let rec creates_i l =
      match l with
      | [] -> m
      | (k,v)::tl ->
        let m' = creates_i tl in
        let m'' = create (k,v) m' in
        m'' in
    creates_i l
  else raise @@ Error "error:creates: dst variable name conflict"
let rec find_l k l =
  match l with
  | [] -> raise @@ Error "error:find_l:not found"
  | (k0,v0)::tl -> if k0=k then v0 else (find_l k tl)

let assgn_dst (dst:string list) (r:lc_stt list) : ((string*lc_stt) list )=
  try
    List.combine dst r
  with _ ->
    pnt (string_of_list (fun x -> x) dst);
    pnt (string_of_list string_of_lc_stt r);
    raise @@ Error "error:assgn_dst"
let operate (l:(string*lc_stt) list) (o:ope) : (lc_stt) =
  match o with
  | Ascii _ -> In "Ascii"
  | Calc c -> calc l c
  | Prn -> if l=[]
    then Rcd [Out "x";In "x"]
    else raise @@ Error "error:operate:Prn"
  | Anh -> if (List.length l)=2
    then Rcd []
    else raise @@ Error "error:operate:Anh"
  | Rpl ->
    if (List.length l)=1
    then Rcd [In "repl";In "repl"]
    else raise @@ Error "error:operate:Rpl"
  | Spp ->
    if (List.length l)=2
    then Rcd [In "spp"]
    else raise @@ Error "error:operate:Spp"

let exec_command c st =
  try
    let (src,dst,op) = (c.src,c.dest,c.ope) in
    let (l,st') = consumes src st in
    let result = assgn_dst dst (List.map (operate l) op) in
    let st'' = creates result st' in
    st''
  with Invalid_argument s -> raise @@ Error s
let rec exec_commands cs st =
  match cs with
  | [] -> st
  | hd::tl ->
    let st' = exec_command hd st in
    exec_commands tl st'

let print_stt (st:stt) =
  let _ = print_string "stt # ";flush stdout in
  let _ = Stt.iter
      (fun k v ->
         print_string ("¿"^k^"="^(string_of_lc_stt v)^",");
         flush stdout )
      st in
  let _ = print_string "\n";flush stdout in
  ()

let load (s:string) : stt =
  try
    let reg = Str.regexp ".+\\.st" in
    if (Str.string_match reg s 0)
    then
      let f = open_in s in
      let s0 = Marshal.from_channel f  in
      let _ = close_in f in
      let _ = Sys.remove s in
      s0
    else raise @@ Error ("error:load: can't load "^s^". file prefix need to be st")
  with | Error err -> raise @@ Error err
       | err -> pnt "error:load\n"; raise err
let save (st:stt) s =
  let reg = Str.regexp ".+\\.st" in
  if (Str.string_match reg s 0)
  then let f = open_out s in
    let _ = Marshal.to_channel f st [] in
    ()
  else raise @@ Error "error:load: can't save to s. file prefix need to be st"
