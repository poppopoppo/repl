
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAL of (
# 16 "parser.mly"
       (int)
# 11 "parser.ml"
  )
    | R_INGR
    | RECIPE
    | PLUS
    | OPER of (
# 15 "parser.mly"
       (string)
# 19 "parser.ml"
  )
    | NUM of (
# 16 "parser.mly"
       (int)
# 24 "parser.ml"
  )
    | MULT
    | L_INGR
    | ITEM of (
# 15 "parser.mly"
       (string)
# 31 "parser.ml"
  )
    | EOF
    | DIREC
  
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
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState19
  | MenhirState16
  | MenhirState12
  | MenhirState10
  | MenhirState9
  | MenhirState7
  | MenhirState4
  | MenhirState3
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

# 77 "parser.ml"

let rec _menhir_goto_command : _menhir_env -> 'ttv_tail -> 'tv_command -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv129 * 'tv_command) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, (_1 : 'tv_command)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 21 "parser.mly"
      (Env.command)
# 97 "parser.ml"
        ) = 
# 24 "parser.mly"
                ( _1 )
# 101 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = _menhir_stack in
        let (_v : (
# 21 "parser.mly"
      (Env.command)
# 108 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
        let (_v : (
# 21 "parser.mly"
      (Env.command)
# 115 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
        let ((_1 : (
# 21 "parser.mly"
      (Env.command)
# 122 "parser.ml"
        )) : (
# 21 "parser.mly"
      (Env.command)
# 126 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv118)) : 'freshtv120)) : 'freshtv122)) : 'freshtv124)) : 'freshtv126)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * 'tv_command) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv128)) : 'freshtv130)

and _menhir_goto_calc_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_calc_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState1 | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_calc_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_calc_list) : 'tv_calc_list) = _v in
        ((let _v : 'tv_operator = 
# 52 "parser.mly"
              ( Calc _1 )
# 151 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_operator) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState16 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv99) * _menhir_state * 'tv_sign)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv97) * _menhir_state * 'tv_sign)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _, (_2 : 'tv_sign)), _, (_4 : 'tv_operator)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_command = 
# 28 "parser.mly"
                               ( _2.ope<-_4;_2 )
# 170 "parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv98)) : 'freshtv100)
        | MenhirState1 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DIREC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv101) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ITEM _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
                | L_INGR ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23
                | R_INGR ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv102)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv103) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
        | _ ->
            _menhir_fail ()) : 'freshtv108)) : 'freshtv110)) : 'freshtv112)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_calc_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_calc_list) : 'tv_calc_list) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_calc)) = _menhir_stack in
        let _v : 'tv_calc_list = 
# 56 "parser.mly"
                   ( _1::_2 )
# 217 "parser.ml"
         in
        _menhir_goto_calc_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_sign : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_sign -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91) * _menhir_state * 'tv_sign) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIREC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87) * _menhir_state * 'tv_sign) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MULT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | NUM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | PLUS ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv89) * _menhir_state * 'tv_sign) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv95) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_sign) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv93) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_sign) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, (_2 : 'tv_operator)), _, (_4 : 'tv_sign)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 29 "parser.mly"
                               ( _4.ope<-_2;_4 )
# 274 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv94)) : 'freshtv96)
    | _ ->
        _menhir_fail ()

and _menhir_goto_r_ingr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_r_ingr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState23 | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_ingr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_r_ingr) : 'tv_r_ingr) = _v in
        ((let _v : 'tv_sign = 
# 33 "parser.mly"
            ( {src=_1;dest=[];ope=Ascii ""} )
# 295 "parser.ml"
         in
        _menhir_goto_sign _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)) : 'freshtv82)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_ingr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_r_ingr) : 'tv_r_ingr) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_sign = 
# 35 "parser.mly"
                      ( {src=_2;dest=_1;ope=Ascii ""} )
# 311 "parser.ml"
         in
        _menhir_goto_sign _menhir_env _menhir_stack _menhir_s _v) : 'freshtv84)) : 'freshtv86)
    | _ ->
        _menhir_fail ()

and _menhir_goto_calc : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | PLUS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv64)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_calc = 
# 60 "parser.mly"
                    ( Mult (_2,_3) )
# 349 "parser.ml"
         in
        _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)) : 'freshtv68)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | PLUS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv70)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_calc = 
# 59 "parser.mly"
                   ( Plus (_2,_3) )
# 380 "parser.ml"
         in
        _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv72)) : 'freshtv74)
    | MenhirState1 | MenhirState19 | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | PLUS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | DIREC | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_calc)) = _menhir_stack in
            let _v : 'tv_calc_list = 
# 55 "parser.mly"
          ( [_1] )
# 404 "parser.ml"
             in
            _menhir_goto_calc_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv78)
    | _ ->
        _menhir_fail ()

and _menhir_goto_l_ingr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_l_ingr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_l_ingr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITEM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | DIREC | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_l_ingr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_l_ingr)) = _menhir_stack in
        let _v : 'tv_sign = 
# 32 "parser.mly"
              ( {src=_1;dest=[];ope=Ascii ""} )
# 431 "parser.ml"
         in
        _menhir_goto_sign _menhir_env _menhir_stack _menhir_s _v) : 'freshtv60)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv62)

and _menhir_goto_item_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_item_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 448 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 454 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 459 "parser.ml"
        ))), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_item_list = 
# 47 "parser.mly"
                   ( (_1::_2) )
# 464 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_r_ingr = 
# 43 "parser.mly"
                      ( _2 )
# 477 "parser.ml"
         in
        _menhir_goto_r_ingr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)) : 'freshtv48)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_l_ingr) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_l_ingr) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_l_ingr)), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_sign = 
# 34 "parser.mly"
                      ( {src=_1;dest=_2;ope=Ascii ""} )
# 489 "parser.ml"
         in
        _menhir_goto_sign _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
    | MenhirState1 | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_INGR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv55 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState27 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv53 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_item_list)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_l_ingr = 
# 39 "parser.mly"
                      ( _1 )
# 511 "parser.ml"
             in
            _menhir_goto_l_ingr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)) : 'freshtv56)
        | R_INGR ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv58)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_l_ingr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv21) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv25) * _menhir_state * 'tv_sign)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 576 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (int)
# 593 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "parser.mly"
       (int)
# 603 "parser.ml"
    )) : (
# 16 "parser.mly"
       (int)
# 607 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 61 "parser.mly"
        ( Val _1 )
# 612 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITEM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | DIREC | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_r_ingr = 
# 42 "parser.mly"
            ( [] )
# 632 "parser.ml"
         in
        _menhir_goto_r_ingr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MULT ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | PLUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (int)
# 662 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "parser.mly"
       (int)
# 672 "parser.ml"
    )) : (
# 16 "parser.mly"
       (int)
# 676 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 62 "parser.mly"
        ( Num _1 )
# 681 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MULT ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NUM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | PLUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_l_ingr = 
# 38 "parser.mly"
            ( [] )
# 714 "parser.ml"
     in
    _menhir_goto_l_ingr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 721 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITEM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | DIREC | EOF | L_INGR | R_INGR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 735 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 740 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_item_list = 
# 46 "parser.mly"
           ( [_1] )
# 745 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

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

and buffer : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 21 "parser.mly"
      (Env.command)
# 768 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RECIPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ITEM _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | L_INGR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | MULT ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | NUM _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | PLUS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | R_INGR ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv2)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv4)) : 'freshtv6))

# 233 "/home/kohe/.opam/system/lib/menhir/standard.mly"
  

# 821 "parser.ml"
