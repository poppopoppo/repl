
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAL of (
# 16 "parser.mly"
       (int)
# 11 "parser.ml"
  )
    | SUM
    | SPP
    | R_SRC
    | R_PRN
    | R_OPR
    | RPL
    | RCP
    | PRN
    | PLS
    | OPER of (
# 15 "parser.mly"
       (string)
# 25 "parser.ml"
  )
    | NUM of (
# 16 "parser.mly"
       (int)
# 30 "parser.ml"
  )
    | MLT
    | L_SRC
    | L_PRN
    | L_OPR
    | ITM of (
# 15 "parser.mly"
       (string)
# 39 "parser.ml"
  )
    | EOF
    | ANH
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState60
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState52
  | MenhirState49
  | MenhirState48
  | MenhirState46
  | MenhirState43
  | MenhirState40
  | MenhirState39
  | MenhirState36
  | MenhirState34
  | MenhirState31
  | MenhirState27
  | MenhirState22
  | MenhirState19
  | MenhirState18
  | MenhirState17
  | MenhirState14
  | MenhirState13
  | MenhirState12
  | MenhirState10
  | MenhirState9
  | MenhirState5
  | MenhirState1

# 1 "parser.mly"
  
(* open Syntax *)
open Env
(*
type operators = ((int list) -> (int list)) State.t
let ax_ope = [
  "warp"  (* \ ??A->num,??A *);
  "intr"  (* ??A->??B,??A \ ??B *);
  "id"  (* ??A \ ??A *)
]
*)

# 102 "parser.ml"

let rec _menhir_goto_code : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
      (Env.command list)
# 107 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv267 * _menhir_state) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 24 "parser.mly"
      (Env.command list)
# 118 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 24 "parser.mly"
      (Env.command list)
# 126 "parser.ml"
        )) : (
# 24 "parser.mly"
      (Env.command list)
# 130 "parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_command)) = _menhir_stack in
        let _1 = () in
        let _v : (
# 24 "parser.mly"
      (Env.command list)
# 137 "parser.ml"
        ) = 
# 29 "parser.mly"
                     ( _2::_3 )
# 141 "parser.ml"
         in
        _menhir_goto_code _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 24 "parser.mly"
      (Env.command list)
# 151 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 24 "parser.mly"
      (Env.command list)
# 159 "parser.ml"
        )) : (
# 24 "parser.mly"
      (Env.command list)
# 163 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv270)) : 'freshtv272)
    | _ ->
        _menhir_fail ()

and _menhir_goto_calc_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_calc_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState67 | MenhirState1 | MenhirState59 | MenhirState48 | MenhirState55 | MenhirState49 | MenhirState39 | MenhirState46 | MenhirState40 | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_calc_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_calc_list) : 'tv_calc_list) = _v in
        ((let _v : 'tv_operator = 
# 91 "parser.mly"
              ( Calc _1 )
# 184 "parser.ml"
         in
        _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_calc_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_calc_list) : 'tv_calc_list) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_calc)) = _menhir_stack in
        let _v : 'tv_calc_list = 
# 99 "parser.mly"
                   ( _1::_2 )
# 200 "parser.ml"
         in
        _menhir_goto_calc_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
    | _ ->
        _menhir_fail ()

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_calc -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_calc -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_item_list -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let (_menhir_stack, _menhir_s, (_1 : 'tv_item_list)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_l_src = 
# 78 "parser.mly"
                     ( _1 )
# 251 "parser.ml"
     in
    _menhir_goto_l_src _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)

and _menhir_goto_signe : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_signe -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_signe) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((_3 : 'tv_signe) : 'tv_signe) = _v in
    ((let (_menhir_stack, _menhir_s, (_1 : 'tv_operator)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_command = 
# 48 "parser.mly"
                          ( (_3.ope<-_1;_3) )
# 270 "parser.ml"
     in
    _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)

and _menhir_goto_r_dst : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_r_dst -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_dst) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_r_dst) : 'tv_r_dst) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_operator)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command = 
# 51 "parser.mly"
                          ( {src=[];dest=_3;ope=_2} )
# 291 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_item_list) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_dst) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_item_list) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_r_dst) : 'tv_r_dst) = _v in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_item_list)), _), _, (_3 : 'tv_operator)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command = 
# 52 "parser.mly"
                                    ( {src=_1;dest=_4;ope=_3} )
# 308 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | _ ->
        _menhir_fail ()

and _menhir_goto_r_src : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_r_src -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_src) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_r_src) : 'tv_r_src) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_operator)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command = 
# 49 "parser.mly"
                          ( {src=_3;dest=[];ope=_2} )
# 331 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)) : 'freshtv230)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_src) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_r_src) : 'tv_r_src) = _v in
        ((let _v : 'tv_signe = 
# 72 "parser.mly"
            ( {src=_1;dest=[];ope=Ascii ""} )
# 346 "parser.ml"
         in
        _menhir_goto_signe _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_src) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_r_src) : 'tv_r_src) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_signe = 
# 74 "parser.mly"
                     ( {src=_2;dest=_1;ope=Ascii ""} )
# 362 "parser.ml"
         in
        _menhir_goto_signe _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)) : 'freshtv238)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_item_list) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_src) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_item_list) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_r_src) : 'tv_r_src) = _v in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_item_list)), _), _, (_3 : 'tv_operator)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command = 
# 50 "parser.mly"
                                    ( {src=_4;dest=_1;ope=_3} )
# 379 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_command : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_command -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv215) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv213) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (_2 : 'tv_command)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Env.command)
# 411 "parser.ml"
            ) = 
# 32 "parser.mly"
                     ( _2 )
# 415 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211) = _menhir_stack in
            let (_v : (
# 23 "parser.mly"
      (Env.command)
# 422 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "parser.mly"
      (Env.command)
# 429 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
            let ((_1 : (
# 23 "parser.mly"
      (Env.command)
# 436 "parser.ml"
            )) : (
# 23 "parser.mly"
      (Env.command)
# 440 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv208)) : 'freshtv210)) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState68 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_command)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Env.command list)
# 469 "parser.ml"
            ) = 
# 28 "parser.mly"
                    ( [_2] )
# 473 "parser.ml"
             in
            _menhir_goto_code _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
        | RCP ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv226)
    | _ ->
        _menhir_fail ()

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | EOF | RCP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_r_src = 
# 81 "parser.mly"
           ( [] )
# 501 "parser.ml"
         in
        _menhir_goto_r_src _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | EOF | RCP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_r_dst = 
# 67 "parser.mly"
           ( [] )
# 525 "parser.ml"
         in
        _menhir_goto_r_dst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_goto_l_dst : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_l_dst -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_l_dst) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ANH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ITM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | L_PRN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | PRN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | RPL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | R_OPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_l_dst) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState48 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | L_PRN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | PRN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | RPL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SPP ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv200)
    | SPP ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv202)

and _menhir_goto_calc : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MLT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | PLS ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | R_PRN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState10 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_calc)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_calc = 
# 102 "parser.mly"
                      ( _2 )
# 616 "parser.ml"
             in
            _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv186)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_calc) * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MLT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | EOF | L_OPR | L_PRN | L_SRC | NUM _ | PLS | RCP | R_PRN | R_SRC | VAL _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv187 * _menhir_state * 'tv_calc) * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_calc)), _), _, (_3 : 'tv_calc)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_calc = 
# 103 "parser.mly"
                  ( Plus (_1,_3) )
# 639 "parser.ml"
             in
            _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv190)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state * 'tv_calc) * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state * 'tv_calc) * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_calc)), _), _, (_3 : 'tv_calc)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_calc = 
# 104 "parser.mly"
                   ( Mult (_1,_3) )
# 656 "parser.ml"
         in
        _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
    | MenhirState67 | MenhirState1 | MenhirState59 | MenhirState48 | MenhirState55 | MenhirState49 | MenhirState39 | MenhirState46 | MenhirState40 | MenhirState27 | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_PRN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | MLT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | PLS ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | EOF | L_OPR | L_SRC | RCP | R_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_calc)) = _menhir_stack in
            let _v : 'tv_calc_list = 
# 98 "parser.mly"
          ( [_1] )
# 682 "parser.ml"
             in
            _menhir_goto_calc_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv198)
    | _ ->
        _menhir_fail ()

and _menhir_goto_l_src : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_l_src -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_l_src) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ITM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | EOF | RCP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv173 * _menhir_state * 'tv_l_src) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_l_src)) = _menhir_stack in
            let _v : 'tv_signe = 
# 71 "parser.mly"
             ( {src=_1;dest=[];ope=Ascii ""} )
# 711 "parser.ml"
             in
            _menhir_goto_signe _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv176)
    | MenhirState67 | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_l_src) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ITM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | L_PRN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | PRN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | RPL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_l_src) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState39 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ANH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | L_PRN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | NUM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | PRN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | RPL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | SPP ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv178)
        | SPP ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv180)
    | _ ->
        _menhir_fail ()

and _menhir_goto_item_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_item_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 782 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 788 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 793 "parser.ml"
        ))), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_item_list = 
# 86 "parser.mly"
                  ( (_1::_2) )
# 798 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_r_src = 
# 82 "parser.mly"
                     ( _2 )
# 811 "parser.ml"
         in
        _menhir_goto_r_src _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)) : 'freshtv134)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_r_dst = 
# 68 "parser.mly"
                     ( _2 )
# 824 "parser.ml"
         in
        _menhir_goto_r_dst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_l_src)), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_signe = 
# 73 "parser.mly"
                     ( {src=_1;dest=_2;ope=Ascii ""} )
# 836 "parser.ml"
         in
        _menhir_goto_signe _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)) : 'freshtv142)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | R_SRC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv144)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv145 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_src)), _, (_2 : 'tv_operator)), _, (_4 : 'tv_item_list)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command = 
# 56 "parser.mly"
                                   ( {src=_1;dest=_4;ope=_2} )
# 863 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ANH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | L_PRN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | NUM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | PRN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | RPL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | SPP ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv151 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv157 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_dst)), _, (_2 : 'tv_operator)), _, (_4 : 'tv_item_list)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command = 
# 60 "parser.mly"
                                    ( {src=_1;dest=_4;ope=_2} )
# 913 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)) : 'freshtv158)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ANH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | L_PRN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | NUM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | PRN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | RPL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | SPP ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | MenhirState67 | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState57 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ANH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | L_PRN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NUM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | PRN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | RPL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | SPP ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv166)
        | R_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState57 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_item_list)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_l_dst = 
# 64 "parser.mly"
                     ( _1 )
# 1000 "parser.ml"
             in
            _menhir_goto_l_dst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv172)
    | _ ->
        _menhir_fail ()

and _menhir_goto_operator : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_operator -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | R_SRC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv86)
    | MenhirState67 | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | L_SRC ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | R_SRC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv95 * _menhir_state * 'tv_l_src) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * 'tv_l_src) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_src)), _), _, (_3 : 'tv_operator)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command = 
# 53 "parser.mly"
                          ( {src=_1;dest=[];ope=_3} )
# 1067 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)) : 'freshtv96)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
            | EOF | RCP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv97 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_l_src)), _, (_2 : 'tv_operator)) = _menhir_stack in
                let _3 = () in
                let _v : 'tv_command = 
# 55 "parser.mly"
                          ( {src=_1;dest=[];ope=_2} )
# 1092 "parser.ml"
                 in
                _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv107 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv105 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_src)), _, (_2 : 'tv_item_list)), _, (_4 : 'tv_operator)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command = 
# 54 "parser.mly"
                                    ( {src=_1;dest=_2;ope=_4} )
# 1116 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_l_dst) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_l_dst) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_dst)), _), _, (_3 : 'tv_operator)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command = 
# 57 "parser.mly"
                          ( {src=[];dest=_1;ope=_3} )
# 1129 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)) : 'freshtv112)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | EOF | RCP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv113 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_l_dst)), _, (_2 : 'tv_operator)) = _menhir_stack in
                let _3 = () in
                let _v : 'tv_command = 
# 59 "parser.mly"
                          ( {src=_1;dest=[];ope=_2} )
# 1154 "parser.ml"
                 in
                _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv116)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv123 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_dst)), _, (_2 : 'tv_item_list)), _, (_4 : 'tv_operator)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command = 
# 58 "parser.mly"
                                    ( {src=_2;dest=_1;ope=_4} )
# 1178 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * 'tv_item_list) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | R_SRC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv126)
    | _ ->
        _menhir_fail ()

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (int)
# 1201 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "parser.mly"
       (int)
# 1211 "parser.ml"
    )) : (
# 16 "parser.mly"
       (int)
# 1215 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 105 "parser.mly"
        ( Val _1 )
# 1220 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv84)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_operator = 
# 95 "parser.mly"
            ( Spp )
# 1234 "parser.ml"
     in
    _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_l_dst = 
# 63 "parser.mly"
           ( [] )
# 1248 "parser.ml"
     in
    _menhir_goto_l_dst _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ANH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | L_PRN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | PRN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | RPL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | SPP ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_operator = 
# 94 "parser.mly"
          ( Rpl )
# 1287 "parser.ml"
     in
    _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv75) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_operator = 
# 92 "parser.mly"
            ( Prn )
# 1301 "parser.ml"
     in
    _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (int)
# 1308 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "parser.mly"
       (int)
# 1318 "parser.ml"
    )) : (
# 16 "parser.mly"
       (int)
# 1322 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 106 "parser.mly"
        ( Cst _1 )
# 1327 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv74)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_l_src = 
# 77 "parser.mly"
           ( [] )
# 1341 "parser.ml"
     in
    _menhir_goto_l_src _menhir_env _menhir_stack _menhir_s _v) : 'freshtv72)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 1365 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | EOF | L_SRC | RCP | R_OPR | R_SRC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 1379 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 1384 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_item_list = 
# 85 "parser.mly"
          ( [_1] )
# 1389 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_operator = 
# 93 "parser.mly"
        ( Anh )
# 1407 "parser.ml"
     in
    _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv68)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv9 * _menhir_state) * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv14)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv15 * _menhir_state * 'tv_item_list) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_item_list) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv21 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state * 'tv_l_dst) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_l_dst) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_l_dst) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv29 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31 * _menhir_state * 'tv_l_src) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_l_src) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_l_src) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_l_src) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 1513 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_calc) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * 'tv_calc) * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_calc) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv66)

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ANH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | ITM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | L_PRN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | L_SRC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | PRN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | RPL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | R_OPR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | R_SRC ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | SPP ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and buffer : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 23 "parser.mly"
      (Env.command)
# 1620 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RCP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | ITM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | L_PRN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | L_SRC ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | PRN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | RPL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | R_OPR ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | R_SRC ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | SPP ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv6)) : 'freshtv8))

and code : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 24 "parser.mly"
      (Env.command list)
# 1671 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RCP ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv2))

# 233 "/home/kohe/.opam/system/lib/menhir/standard.mly"
  

# 1690 "parser.ml"
