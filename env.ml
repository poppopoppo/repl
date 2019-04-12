module State = Map.Make(String)
type state = int State.t
exception Error of string
let (gl_st:state) = State.empty
let new_state () = State.empty
type command = {
    src : string list;
    dest : string list;
    ope : string
  }
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
let rec consumes l m =
  match l with
  | [] -> ([],m)
  | i::tl ->
    let (v,m') = consume i m in
    let (l',m'') = consumes tl m' in
    (v::l',m'')
let rec creates l m =
  match l with
  | [] -> m
  | (k,v)::tl ->
    let m' = creates tl m in
    let m'' = create (k,v) m' in
    m''
let exec_command c st =
  let (src,dst,_) = (c.src,c.dest,c.ope) in
  let (_,st') = consumes src st in
  let st'' = creates (List.map (fun x -> (x,0)) dst) st' in
  st''
let print_st st =
  let _ = print_string "state # ";flush stdout in
  let _ = State.iter
    (fun k v ->
      print_string ("?"^k^"="^(string_of_int v)^",");
      flush stdout )
    st in
  let _ = print_string "\n";flush stdout in
  ()
