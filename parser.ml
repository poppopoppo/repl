
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAL of (
# 15 "parser.mly"
       (string)
# 11 "parser.ml"
  )
    | R_INGR
    | R_DIREC
    | RECIPE
    | PLUS
    | OPER of (
# 15 "parser.mly"
       (string)
# 20 "parser.ml"
  )
    | NUM of (
# 16 "parser.mly"
       (int)
# 25 "parser.ml"
  )
    | MULT
    | L_INGR
    | L_DIREC
    | ITEM of (
# 15 "parser.mly"
       (string)
# 33 "parser.ml"
  )
    | EOF
  
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
  | MenhirState33
  | MenhirState30
  | MenhirState29
  | MenhirState26
  | MenhirState23
  | MenhirState22
  | MenhirState19
  | MenhirState16
  | MenhirState14
  | MenhirState11
  | MenhirState10
  | MenhirState8
  | MenhirState6
  | MenhirState5
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

# 82 "parser.ml"

let rec _menhir_goto_calc_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_calc_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState1 | MenhirState33 | MenhirState30 | MenhirState19 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_calc_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_calc_list) : 'tv_calc_list) = _v in
        ((let _v : 'tv_operator = 
# 45 "parser.mly"
              ( Calc _1 )
# 99 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_operator) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState11 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv121) * _menhir_state) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv119) * _menhir_state) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _), _), _, (_4 : 'tv_operator)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_command = 
# 28 "parser.mly"
                                   ( {src=[];dest=[];ope=_4} )
# 119 "parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv120)) : 'freshtv122)
        | MenhirState19 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv125) * _menhir_state) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv123) * _menhir_state) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _), _, (_3 : 'tv_item_list)), _, (_5 : 'tv_operator)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_command = 
# 30 "parser.mly"
                                             ( {src=[];dest=_3;ope=_5} )
# 134 "parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv124)) : 'freshtv126)
        | MenhirState1 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv135) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | R_DIREC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv131) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ITEM _v ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
                | R_INGR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv129) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState22 in
                    ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ITEM _v ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
                    | EOF ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv127) * _menhir_state * 'tv_operator)) * _menhir_state) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _, (_2 : 'tv_operator)), _) = _menhir_stack in
                        let _4 = () in
                        let _3 = () in
                        let _1 = () in
                        let _v : 'tv_command = 
# 29 "parser.mly"
                                   (  {src=[];dest=[];ope=_2} )
# 171 "parser.ml"
                         in
                        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv128)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv130)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv132)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv133) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)) : 'freshtv136)
        | MenhirState30 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv139) * _menhir_state * 'tv_item_list)) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv137) * _menhir_state * 'tv_item_list)) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _, (_2 : 'tv_item_list)), _), _, (_5 : 'tv_operator)) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_command = 
# 31 "parser.mly"
                                             (  {src=_2;dest=[];ope=_5} )
# 201 "parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv138)) : 'freshtv140)
        | MenhirState33 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv143) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv141) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _, (_2 : 'tv_item_list)), _, (_4 : 'tv_item_list)), _, (_6 : 'tv_operator)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_command = 
# 35 "parser.mly"
      (  {src=_2;dest=_4;ope=_6} )
# 216 "parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv142)) : 'freshtv144)
        | _ ->
            _menhir_fail ()) : 'freshtv146)) : 'freshtv148)) : 'freshtv150)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_calc_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_calc_list) : 'tv_calc_list) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_calc)) = _menhir_stack in
        let _v : 'tv_calc_list = 
# 49 "parser.mly"
                   ( _1::_2 )
# 234 "parser.ml"
         in
        _menhir_goto_calc_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_command : _menhir_env -> 'ttv_tail -> 'tv_command -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv117 * 'tv_command) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, (_1 : 'tv_command)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 21 "parser.mly"
      (Env.command)
# 263 "parser.ml"
        ) = 
# 24 "parser.mly"
                ( _1 )
# 267 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109) = _menhir_stack in
        let (_v : (
# 21 "parser.mly"
      (Env.command)
# 274 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
        let (_v : (
# 21 "parser.mly"
      (Env.command)
# 281 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
        let ((_1 : (
# 21 "parser.mly"
      (Env.command)
# 288 "parser.ml"
        )) : (
# 21 "parser.mly"
      (Env.command)
# 292 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv106)) : 'freshtv108)) : 'freshtv110)) : 'freshtv112)) : 'freshtv114)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * 'tv_command) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv116)) : 'freshtv118)

and _menhir_goto_calc : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | NUM _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | PLUS ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv90)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_calc = 
# 53 "parser.mly"
                    ( Mult (_2,_3) )
# 334 "parser.ml"
         in
        _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | NUM _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | PLUS ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv96)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * _menhir_state * 'tv_calc) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_calc = 
# 52 "parser.mly"
                   ( Plus (_2,_3) )
# 365 "parser.ml"
         in
        _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)) : 'freshtv100)
    | MenhirState1 | MenhirState33 | MenhirState30 | MenhirState19 | MenhirState14 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | NUM _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | PLUS ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | EOF | R_DIREC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_calc)) = _menhir_stack in
            let _v : 'tv_calc_list = 
# 48 "parser.mly"
          ( [_1] )
# 389 "parser.ml"
             in
            _menhir_goto_calc_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv104)
    | _ ->
        _menhir_fail ()

and _menhir_goto_item_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_item_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 408 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 414 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 419 "parser.ml"
        ))), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_item_list = 
# 41 "parser.mly"
                   ( (_1::_2) )
# 424 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_DIREC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv53) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MULT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | NUM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | PLUS ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv54)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv55) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61) * _menhir_state * 'tv_operator)) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv59) * _menhir_state * 'tv_operator)) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, (_2 : 'tv_operator)), _), _, (_5 : 'tv_item_list)) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 32 "parser.mly"
                                             (  {src=_5;dest=[];ope=_2} )
# 470 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv60)) : 'freshtv62)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_INGR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv65) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITEM _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv63) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _, (_2 : 'tv_operator)), _, (_4 : 'tv_item_list)) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_command = 
# 33 "parser.mly"
                                             (  {src=[];dest=_4;ope=_2} )
# 497 "parser.ml"
                 in
                _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv64)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv66)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv67) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv73) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv71) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, (_2 : 'tv_operator)), _, (_4 : 'tv_item_list)), _, (_6 : 'tv_item_list)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 37 "parser.mly"
      (  {src=_6;dest=_4;ope=_2} )
# 523 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv72)) : 'freshtv74)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_INGR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITEM _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | L_DIREC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv75) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState29 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | MULT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
                | NUM _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
                | PLUS ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
                | VAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv76)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv78)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv79) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv87) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_DIREC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv83) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MULT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | NUM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | PLUS ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv85) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv17) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv19) * _menhir_state * 'tv_item_list)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv21) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv23) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv25) * _menhir_state * 'tv_operator)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv27) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv29) * _menhir_state) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 648 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv35) * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv48)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 695 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 15 "parser.mly"
       (string)
# 705 "parser.ml"
    )) : (
# 15 "parser.mly"
       (string)
# 709 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 54 "parser.mly"
        ( Item _1 )
# 714 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MULT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NUM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | PLUS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (int)
# 740 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "parser.mly"
       (int)
# 750 "parser.ml"
    )) : (
# 16 "parser.mly"
       (int)
# 754 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 55 "parser.mly"
        ( Num _1 )
# 759 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MULT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NUM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | PLUS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 785 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITEM _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | EOF | L_DIREC | L_INGR | R_INGR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 799 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 804 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_item_list = 
# 40 "parser.mly"
           ( [_1] )
# 809 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

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
# 832 "parser.ml"
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
    let (_menhir_stack : 'freshtv9) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RECIPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ITEM _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | L_INGR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState1 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITEM _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | L_DIREC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv1) * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState10 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | MULT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
                | NUM _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
                | PLUS ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
                | VAL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv2)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv4)
        | MULT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | NUM _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | PLUS ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv8)) : 'freshtv10))

# 233 "/home/kohe/.opam/system/lib/menhir/standard.mly"
  

# 915 "parser.ml"
