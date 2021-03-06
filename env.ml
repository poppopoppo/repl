type create_flg = Strict | Override
let create_flg = Strict
let debug_flg = ref true
let pnt s = if !debug_flg=true then print_string s;flush stdout

module State = Map.Make(String)
type state = int State.t
exception Error of string
let (gl_st:state) = State.empty
let new_state () = State.empty
type ope =
  | Ascii of string
  | Calc of (calc_num list)
and calc_num =
  | Plus of (calc_num * calc_num)
  | Mult of (calc_num * calc_num)
  | Num of int
  | Item of string
        [@@ deriving show]
let rec calc l c =
  match c with
  | Plus (o1,o2) -> (calc l o1) + (calc l o2)
  | Mult (o1,o2) -> (calc l o1) * (calc l o2)
  | Num n -> n
  | Item i -> List.assoc i l

type command = {
    src : string list;
    dest : string list;
    ope : ope
}
    [@@ deriving show]
let consume k m =
  try
    let v = State.find k m in
    let m' = State.remove k m in
    (v,m')
  with Not_found -> raise @@ Error ("error: ¿"^k^" is not exist")
let create (k,v) m =
  try
    let _ = State.find k m in
    raise @@ Error ("error: ¿"^k^" is allready exist")
  with Not_found ->
    let m' = State.add k v m in
    m'
let peek k st =
  try
    let v = State.find k st in
    v
  with Not_found -> raise @@ Error ("error:peek: ¿"^k^" is not exist")
let rec consumes src_l st =
  match src_l with
  | [] -> ([],st)
  | i::tl ->
    let (v,st') = consume i st in
    let (l',st'') = consumes tl st' in
    ((i,v)::l',st'')
let rec creates l m =
  match l with
  | [] -> m
  | (k,v)::tl ->
    let m' = creates tl m in
    let m'' = create (k,v) m' in
    m''
let rec find_l k l =
  match l with
  | [] -> raise @@ Error "error:find_l:not found"
  | (k0,v0)::tl -> if k0=k then v0 else (find_l k tl)

let exec_command c st =
  try
    let (src,dst,op) = (c.src,c.dest,c.ope) in
  let (l,st') = consumes src st in
  let result = match op with
    | Ascii _ -> []
    | Calc c ->
      let r = List.map (calc l) c in
      List.combine dst r in
  let st'' = creates result st' in
    st''
  with Invalid_argument s -> raise @@ Error s 


let print_st st =
  let _ = print_string "state # ";flush stdout in
  let _ = State.iter
    (fun k v ->
      print_string ("?"^k^"="^(string_of_int v)^",");
      flush stdout )
    st in
  let _ = print_string "\n";flush stdout in
  ()
