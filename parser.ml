
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | R_INGR
    | R_DIREC
    | RECIPE
    | OPER of (
# 15 "parser.mly"
       (string)
# 14 "parser.ml"
  )
    | NUM of (
# 16 "parser.mly"
       (int)
# 19 "parser.ml"
  )
    | L_INGR
    | L_DIREC
    | ITEM of (
# 15 "parser.mly"
       (string)
# 26 "parser.ml"
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
  | MenhirState25
  | MenhirState22
  | MenhirState21
  | MenhirState18
  | MenhirState15
  | MenhirState14
  | MenhirState11
  | MenhirState8
  | MenhirState6
  | MenhirState5
  | MenhirState2
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

# 71 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_command : _menhir_env -> 'ttv_tail -> 'tv_command -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv123 * 'tv_command) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, (_1 : 'tv_command)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 20 "parser.mly"
      (Env.command)
# 96 "parser.ml"
        ) = 
# 23 "parser.mly"
                ( _1 )
# 100 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115) = _menhir_stack in
        let (_v : (
# 20 "parser.mly"
      (Env.command)
# 107 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113) = Obj.magic _menhir_stack in
        let (_v : (
# 20 "parser.mly"
      (Env.command)
# 114 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
        let ((_1 : (
# 20 "parser.mly"
      (Env.command)
# 121 "parser.ml"
        )) : (
# 20 "parser.mly"
      (Env.command)
# 125 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv112)) : 'freshtv114)) : 'freshtv116)) : 'freshtv118)) : 'freshtv120)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * 'tv_command) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv122)) : 'freshtv124)

and _menhir_goto_operator : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_operator -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 144 "parser.ml"
        )) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 150 "parser.ml"
        )) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 155 "parser.ml"
        ))), _, (_2 : 'tv_operator)) = _menhir_stack in
        let _v : 'tv_operator = 
# 44 "parser.mly"
                  ( (_1^" "^_2) )
# 160 "parser.ml"
         in
        _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv87) * _menhir_state) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv85) * _menhir_state) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _), _), _, (_4 : 'tv_operator)) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 27 "parser.mly"
                                   ( {src=[];dest=[];ope=_4} )
# 175 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv86)) : 'freshtv88)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv91) * _menhir_state) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv89) * _menhir_state) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _), _, (_3 : 'tv_item_list)), _, (_5 : 'tv_operator)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 29 "parser.mly"
                                             ( {src=[];dest=_3;ope=_5} )
# 190 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv90)) : 'freshtv92)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_DIREC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv97) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITEM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | R_INGR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv95) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState14 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ITEM _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
                | EOF ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv93) * _menhir_state * 'tv_operator)) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _, (_2 : 'tv_operator)), _) = _menhir_stack in
                    let _4 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_command = 
# 28 "parser.mly"
                                   (  {src=[];dest=[];ope=_2} )
# 227 "parser.ml"
                     in
                    _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv94)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv96)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv98)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv99) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv105) * _menhir_state * 'tv_item_list)) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv103) * _menhir_state * 'tv_item_list)) * _menhir_state) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, (_2 : 'tv_item_list)), _), _, (_5 : 'tv_operator)) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 30 "parser.mly"
                                             (  {src=_2;dest=[];ope=_5} )
# 257 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv104)) : 'freshtv106)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv109) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv107) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_operator) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, (_2 : 'tv_item_list)), _, (_4 : 'tv_item_list)), _, (_6 : 'tv_operator)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 34 "parser.mly"
      (  {src=_2;dest=_4;ope=_6} )
# 272 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv108)) : 'freshtv110)
    | _ ->
        _menhir_fail ()

and _menhir_goto_item_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_item_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 287 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 293 "parser.ml"
        )) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 298 "parser.ml"
        ))), _, (_2 : 'tv_item_list)) = _menhir_stack in
        let _v : 'tv_item_list = 
# 40 "parser.mly"
                   ( (_1::_2) )
# 303 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_DIREC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv45) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NUM _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | OPER _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv46)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv47) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv53) * _menhir_state * 'tv_operator)) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv51) * _menhir_state * 'tv_operator)) * _menhir_state) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, (_2 : 'tv_operator)), _), _, (_5 : 'tv_item_list)) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 31 "parser.mly"
                                             (  {src=_5;dest=[];ope=_2} )
# 345 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv52)) : 'freshtv54)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv61) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_INGR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv57) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITEM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv55) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _, (_2 : 'tv_operator)), _, (_4 : 'tv_item_list)) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_command = 
# 32 "parser.mly"
                                             (  {src=[];dest=_4;ope=_2} )
# 372 "parser.ml"
                 in
                _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv56)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv59) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv65) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv63) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, (_2 : 'tv_operator)), _, (_4 : 'tv_item_list)), _, (_6 : 'tv_item_list)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_command = 
# 36 "parser.mly"
      (  {src=_6;dest=_4;ope=_2} )
# 398 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _v) : 'freshtv64)) : 'freshtv66)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_INGR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv69) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITEM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | L_DIREC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv67) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState21 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | NUM _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
                | OPER _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv68)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv79) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_DIREC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv75) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NUM _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | OPER _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv76)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv77) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv17) * _menhir_state * 'tv_item_list)) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv19) * _menhir_state * 'tv_item_list)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv21) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv23) * _menhir_state * 'tv_operator)) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv25) * _menhir_state * 'tv_operator)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv27) * _menhir_state * 'tv_operator)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv29) * _menhir_state) * _menhir_state * 'tv_item_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 515 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv33) * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 534 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 546 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NUM _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | OPER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | EOF | R_DIREC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 562 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 567 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_operator = 
# 43 "parser.mly"
         ( _1 )
# 572 "parser.ml"
         in
        _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (int)
# 583 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "parser.mly"
       (int)
# 593 "parser.ml"
    )) : (
# 16 "parser.mly"
       (int)
# 597 "parser.ml"
    )) = _v in
    ((let _v : 'tv_operator = 
# 45 "parser.mly"
        ( (string_of_int _1) )
# 602 "parser.ml"
     in
    _menhir_goto_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 609 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITEM _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | EOF | L_DIREC | L_INGR | R_INGR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 15 "parser.mly"
       (string)
# 623 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
       (string)
# 628 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_item_list = 
# 39 "parser.mly"
           ( [_1] )
# 633 "parser.ml"
         in
        _menhir_goto_item_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

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
# 20 "parser.mly"
      (Env.command)
# 656 "parser.ml"
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
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | L_INGR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState1 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITEM _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | L_DIREC ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv1) * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState5 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | NUM _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
                | OPER _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv2)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv4)
        | NUM _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | OPER _v ->
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
  

# 731 "parser.ml"
