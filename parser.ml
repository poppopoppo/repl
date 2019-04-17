
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAL of (
# 17 "parser.mly"
       (int)
# 11 "parser.ml"
  )
    | TEST
    | R_SRC
    | R_PRN
    | R_OPR
    | RCP
    | PRN
    | PLS
    | OR
    | OPER of (
# 16 "parser.mly"
       (string)
# 24 "parser.ml"
  )
    | OBS
    | NUM of (
# 17 "parser.mly"
       (int)
# 30 "parser.ml"
  )
    | MLT
    | L_SRC
    | L_PRN
    | L_OPR
    | ITM of (
# 16 "parser.mly"
       (string)
# 39 "parser.ml"
  )
    | FRK
    | FOR
    | EOF
    | CYC
    | CNC_R
    | CNC_L
  
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
  | MenhirState145
  | MenhirState143
  | MenhirState140
  | MenhirState138
  | MenhirState135
  | MenhirState133
  | MenhirState132
  | MenhirState126
  | MenhirState124
  | MenhirState123
  | MenhirState122
  | MenhirState121
  | MenhirState118
  | MenhirState116
  | MenhirState114
  | MenhirState110
  | MenhirState109
  | MenhirState96
  | MenhirState94
  | MenhirState91
  | MenhirState86
  | MenhirState81
  | MenhirState79
  | MenhirState76
  | MenhirState72
  | MenhirState66
  | MenhirState63
  | MenhirState62
  | MenhirState58
  | MenhirState56
  | MenhirState53
  | MenhirState51
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState32
  | MenhirState31
  | MenhirState29
  | MenhirState26
  | MenhirState23
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState10
  | MenhirState7
  | MenhirState4
  | MenhirState3
  | MenhirState1
  | MenhirState0

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

# 132 "parser.ml"

let rec _menhir_reduce59 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_fork_proc -> _menhir_state -> 'tv_forks -> 'ttv_return =
  fun _menhir_env _menhir_stack _ (_2 : 'tv_forks) ->
    let (_menhir_stack, _menhir_s, (_1 : 'tv_fork_proc)) = _menhir_stack in
    let _v : 'tv_forks = 
# 71 "parser.mly"
                    ()
# 140 "parser.ml"
     in
    _menhir_goto_forks _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce45 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_prg_list -> _menhir_state -> 'tv_forks -> 'ttv_return =
  fun _menhir_env _menhir_stack _ (_3 : 'tv_forks) ->
    let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_prg_list)) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_fork = 
# 64 "parser.mly"
                        ()
# 151 "parser.ml"
     in
    _menhir_goto_fork _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_forks : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_forks -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_forks) = _v in
        (_menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv590)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_fork_proc) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_forks) = _v in
        (_menhir_reduce59 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv592)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_forks) = _v in
        (_menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv594)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_fork_proc) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_forks) = _v in
        (_menhir_reduce59 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv596)
    | _ ->
        _menhir_fail ()

and _menhir_goto_obs_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_obs_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state * 'tv_or_atom) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_obs_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv575 * _menhir_state * 'tv_or_atom) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_obs_list) : 'tv_obs_list) = _v in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_or_atom)), _, (_2 : 'tv_prg_list)) = _menhir_stack in
        let _v : 'tv_obs_list = 
# 59 "parser.mly"
                              ()
# 201 "parser.ml"
         in
        _menhir_goto_obs_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv576)) : 'freshtv578)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 209 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_obs_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv585 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 217 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_obs_list) : 'tv_obs_list) = _v in
        ((let ((_menhir_stack, _menhir_s), (_2 : (
# 16 "parser.mly"
       (string)
# 224 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_observe = 
# 55 "parser.mly"
                     ()
# 230 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_observe) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_observe) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_observe) : 'tv_observe) = _v in
        ((let _v : 'tv_program_command = 
# 50 "parser.mly"
            ()
# 247 "parser.ml"
         in
        _menhir_goto_program_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv580)) : 'freshtv582)) : 'freshtv584)) : 'freshtv586)) : 'freshtv588)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fork_proc : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fork_proc -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState138 | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_fork_proc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | CYC | EOF | FRK | OBS | RCP | TEST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv569 * _menhir_state * 'tv_fork_proc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_fork_proc)) = _menhir_stack in
            let _v : 'tv_forks = 
# 70 "parser.mly"
              ()
# 272 "parser.ml"
             in
            _menhir_goto_forks _menhir_env _menhir_stack _menhir_s _v) : 'freshtv570)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv572)
    | MenhirState145 | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_fork_proc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv574)
    | _ ->
        _menhir_fail ()

and _menhir_run133 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CYC ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | FRK ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
    | OBS ->
        _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | RCP ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | R_OPR ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | TEST ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | EOF | FOR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_fork_proc = 
# 74 "parser.mly"
        ()
# 322 "parser.ml"
         in
        _menhir_goto_fork_proc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv568)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133

and _menhir_goto_r_ope : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_r_ope -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_ope) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv555 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_r_ope) : 'tv_r_ope) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_items)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command_std = 
# 93 "parser.mly"
                      ()
# 347 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)) : 'freshtv558)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv561 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_ope) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_r_ope) : 'tv_r_ope) = _v in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _), _, (_3 : 'tv_items)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command_std = 
# 103 "parser.mly"
                            ()
# 364 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv560)) : 'freshtv562)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv565 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_r_ope) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv563 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_r_ope) : 'tv_r_ope) = _v in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _), _, (_3 : 'tv_items)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command_std = 
# 102 "parser.mly"
                            ()
# 381 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv564)) : 'freshtv566)
    | _ ->
        _menhir_fail ()

and _menhir_goto_l_ope : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_l_ope -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv553 * _menhir_state * 'tv_l_ope) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv554)

and _menhir_goto_command_fork : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_command_fork -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_command_fork) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_command_fork) : 'tv_command_fork) = _v in
    ((let _v : 'tv_command = 
# 84 "parser.mly"
                  ()
# 415 "parser.ml"
     in
    _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)) : 'freshtv552)

and _menhir_goto_code : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
      (Env.command list)
# 422 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 26 "parser.mly"
      (Env.command list)
# 433 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : (
# 26 "parser.mly"
      (Env.command list)
# 441 "parser.ml"
        )) : (
# 26 "parser.mly"
      (Env.command list)
# 445 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_command)) = _menhir_stack in
        let _v : (
# 26 "parser.mly"
      (Env.command list)
# 451 "parser.ml"
        ) = 
# 32 "parser.mly"
                 ( (* $2::$3 *) [{src=[];dest=[];ope=[]}])
# 455 "parser.ml"
         in
        _menhir_goto_code _menhir_env _menhir_stack _menhir_s _v) : 'freshtv542)) : 'freshtv544)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 26 "parser.mly"
      (Env.command list)
# 465 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 26 "parser.mly"
      (Env.command list)
# 473 "parser.ml"
        )) : (
# 26 "parser.mly"
      (Env.command list)
# 477 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv546)) : 'freshtv548)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prg_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prg_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv523 * _menhir_state * 'tv_program_command) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state * 'tv_program_command) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_program_command)), _, (_2 : 'tv_prg_list)) = _menhir_stack in
        let _v : 'tv_prg_list = 
# 46 "parser.mly"
                             ()
# 496 "parser.ml"
         in
        _menhir_goto_prg_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)) : 'freshtv524)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv526)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_prg_list)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_fork_proc = 
# 75 "parser.mly"
                 ()
# 521 "parser.ml"
         in
        _menhir_goto_fork_proc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv533 * _menhir_state) * _menhir_state * 'tv_fork_atom) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv531 * _menhir_state) * _menhir_state * 'tv_fork_atom) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_fork_atom)), _, (_3 : 'tv_prg_list)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_fork_proc = 
# 76 "parser.mly"
                           ()
# 534 "parser.ml"
         in
        _menhir_goto_fork_proc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)) : 'freshtv534)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv537 * _menhir_state * 'tv_or_atom) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OR ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | CYC | EOF | FRK | OBS | RCP | TEST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv535 * _menhir_state * 'tv_or_atom) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_or_atom)), _, (_2 : 'tv_prg_list)) = _menhir_stack in
            let _v : 'tv_obs_list = 
# 58 "parser.mly"
                     ()
# 552 "parser.ml"
             in
            _menhir_goto_obs_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv536)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv538)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv539 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv540)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ope_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ope_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv467 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv465 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_ope_list)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_l_ope = 
# 118 "parser.mly"
                          ()
# 596 "parser.ml"
             in
            _menhir_goto_l_ope _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)) : 'freshtv468)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv469 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state * 'tv_ope_atom) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * _menhir_state * 'tv_ope_atom) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_ope_atom)), _, (_2 : 'tv_ope_list)) = _menhir_stack in
        let _v : 'tv_ope_list = 
# 122 "parser.mly"
                      ()
# 615 "parser.ml"
         in
        _menhir_goto_ope_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
    | MenhirState44 | MenhirState50 | MenhirState45 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv497 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv495 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_ope_list)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_m_ope = 
# 110 "parser.mly"
                    ()
# 635 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_m_ope) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState26 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv477 * _menhir_state) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ITM _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv478)
            | MenhirState45 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv479 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ITM _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv480)
            | MenhirState50 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ITM _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv482)
            | MenhirState44 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv491 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | L_SRC ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv483 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ITM _v ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv484)
                | R_SRC ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv487 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ITM _v ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
                    | CYC | EOF | FRK | OBS | RCP | TEST ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (('freshtv485 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope)) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _, (_2 : 'tv_m_ope)) = _menhir_stack in
                        let _3 = () in
                        let _v : 'tv_command_std = 
# 95 "parser.mly"
                      ()
# 713 "parser.ml"
                         in
                        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv488)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
            | _ ->
                _menhir_fail ()) : 'freshtv494)) : 'freshtv496)) : 'freshtv498)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv499 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv500)) : 'freshtv502)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv511 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv505 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv503 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_ope_list)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_r_ope = 
# 114 "parser.mly"
                          ()
# 754 "parser.ml"
             in
            _menhir_goto_r_ope _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)) : 'freshtv506)
        | CYC | EOF | FRK | OBS | RCP | TEST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv507 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_ope_list)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_r_ope = 
# 113 "parser.mly"
                    ()
# 765 "parser.ml"
             in
            _menhir_goto_r_ope _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv509 * _menhir_state) * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv510)) : 'freshtv512)
    | MenhirState118 | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv519 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_ope_list)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_l_ope = 
# 117 "parser.mly"
                    ()
# 792 "parser.ml"
             in
            _menhir_goto_l_ope _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv517 * _menhir_state * 'tv_ope_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv518)) : 'freshtv520)
    | _ ->
        _menhir_fail ()

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_goto_cmd_obs_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_cmd_obs_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_or_atom) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_cmd_obs_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_or_atom) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_cmd_obs_list) : 'tv_cmd_obs_list) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_or_atom)) = _menhir_stack in
        let _v : 'tv_cmd_obs_list = 
# 146 "parser.mly"
                          ()
# 893 "parser.ml"
         in
        _menhir_goto_cmd_obs_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)) : 'freshtv454)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * (
# 16 "parser.mly"
       (string)
# 901 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_cmd_obs_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * (
# 16 "parser.mly"
       (string)
# 909 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_cmd_obs_list) : 'tv_cmd_obs_list) = _v in
        ((let (_menhir_stack, (_1 : (
# 16 "parser.mly"
       (string)
# 916 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_command_observe = 
# 142 "parser.mly"
                      ()
# 921 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = _menhir_stack in
        let (_v : 'tv_command_observe) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : 'tv_command_observe) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : 'tv_command_observe) : 'tv_command_observe) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command = 
# 83 "parser.mly"
                         ()
# 937 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)) : 'freshtv458)) : 'freshtv460)) : 'freshtv462)) : 'freshtv464)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fork_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fork_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv433 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | CYC | EOF | FRK | OBS | RCP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv431 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_fork_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_fork_list = 
# 163 "parser.mly"
                   ()
# 963 "parser.ml"
             in
            _menhir_goto_fork_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv434)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv437 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FOR ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | CYC | EOF | FRK | OBS | RCP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv435 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_fork_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_command_fork = 
# 158 "parser.mly"
                   ()
# 986 "parser.ml"
             in
            _menhir_goto_command_fork _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv438)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_fork_atom)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_cycle = 
# 79 "parser.mly"
                  ()
# 1003 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv443) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_cycle) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_cycle) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_cycle) : 'tv_cycle) = _v in
        ((let _v : 'tv_program_command = 
# 52 "parser.mly"
          ()
# 1020 "parser.ml"
         in
        _menhir_goto_program_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)) : 'freshtv442)) : 'freshtv444)) : 'freshtv446)) : 'freshtv448)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv449 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CYC ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | FRK ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | OBS ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | RCP ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | TEST ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv450)
    | _ ->
        _menhir_fail ()

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_goto_fork_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fork_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fork_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_fork_list) : 'tv_fork_list) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_fork_list = 
# 164 "parser.mly"
                   ()
# 1082 "parser.ml"
         in
        _menhir_goto_fork_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fork_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_fork_list) : 'tv_fork_list) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_fork_atom)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_fork_list = 
# 165 "parser.mly"
                             ()
# 1099 "parser.ml"
         in
        _menhir_goto_fork_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fork_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_fork_list) : 'tv_fork_list) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command_fork = 
# 157 "parser.mly"
                   ()
# 1116 "parser.ml"
         in
        _menhir_goto_command_fork _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)) : 'freshtv426)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fork_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_fork_list) : 'tv_fork_list) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_fork_atom)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command_fork = 
# 159 "parser.mly"
                             ()
# 1133 "parser.ml"
         in
        _menhir_goto_command_fork _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
    | _ ->
        _menhir_fail ()

and _menhir_goto_command : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_command -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_command)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 25 "parser.mly"
      (Env.command)
# 1159 "parser.ml"
            ) = 
# 35 "parser.mly"
                ( {src=[];dest=[];ope=[]} )
# 1163 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv399) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 25 "parser.mly"
      (Env.command)
# 1171 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 25 "parser.mly"
      (Env.command)
# 1179 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 25 "parser.mly"
      (Env.command)
# 1187 "parser.ml"
            )) : (
# 25 "parser.mly"
      (Env.command)
# 1191 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv396)) : 'freshtv398)) : 'freshtv400)) : 'freshtv402)) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
    | MenhirState110 | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CYC ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState110 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_command)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 26 "parser.mly"
      (Env.command list)
# 1221 "parser.ml"
            ) = 
# 31 "parser.mly"
                ( (* [$2] *) [{src=[];dest=[];ope=[]}] )
# 1225 "parser.ml"
             in
            _menhir_goto_code _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)) : 'freshtv412)
        | FRK ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | OBS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | RCP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv414)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_program_command : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_program_command -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_program_command) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CYC ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_program_command) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState126 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_program_command) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_program_command)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prg_list = 
# 45 "parser.mly"
                        ()
# 1269 "parser.ml"
         in
        _menhir_goto_prg_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
    | FRK ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | OBS ->
        _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | RCP ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | TEST ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv394)

and _menhir_goto_calc : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_calc -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CNC_L ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | CNC_R ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MLT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | R_PRN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_calc)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_calc = 
# 186 "parser.mly"
                      ( _2 )
# 1315 "parser.ml"
             in
            _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CNC_L ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | CNC_R ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MLT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | CYC | EOF | FRK | L_OPR | L_PRN | NUM _ | OBS | PLS | PRN | RCP | R_PRN | TEST | VAL _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_calc = 
# 187 "parser.mly"
                  ( Plus (_1,_3) )
# 1345 "parser.ml"
             in
            _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CNC_L ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | CNC_R ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | CYC | EOF | FRK | L_OPR | L_PRN | MLT | NUM _ | OBS | PLS | PRN | RCP | R_PRN | TEST | VAL _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_calc = 
# 188 "parser.mly"
                   ( Mult (_1,_3) )
# 1373 "parser.ml"
             in
            _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv371 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_calc = 
# 185 "parser.mly"
                    ( Cst 0 )
# 1393 "parser.ml"
         in
        _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)) : 'freshtv372)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_calc)) * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_calc)), _, (_3 : 'tv_calc)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_calc = 
# 184 "parser.mly"
                    ( Cst 0 )
# 1406 "parser.ml"
         in
        _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
    | MenhirState118 | MenhirState1 | MenhirState44 | MenhirState50 | MenhirState45 | MenhirState26 | MenhirState32 | MenhirState7 | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CNC_L ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | CNC_R ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MLT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | CYC | EOF | FRK | L_OPR | L_PRN | NUM _ | OBS | PRN | RCP | TEST | VAL _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_calc)) = _menhir_stack in
            let _v : 'tv_ope_atom = 
# 180 "parser.mly"
         ( Calc _1 )
# 1430 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_ope_atom) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_ope_atom) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | L_PRN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | NUM _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | PRN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | CYC | EOF | FRK | L_OPR | OBS | RCP | TEST ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_ope_atom) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (_1 : 'tv_ope_atom)) = _menhir_stack in
                let _v : 'tv_ope_list = 
# 121 "parser.mly"
              ()
# 1457 "parser.ml"
                 in
                _menhir_goto_ope_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv380)) : 'freshtv382)) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_calc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
    | _ ->
        _menhir_fail ()

and _menhir_goto_command_std : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_command_std -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_command_std) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_command_std) : 'tv_command_std) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command = 
# 82 "parser.mly"
                     ()
# 1491 "parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_command_std) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_command_std) : 'tv_command_std) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_program_command = 
# 49 "parser.mly"
                    ()
# 1508 "parser.ml"
         in
        _menhir_goto_program_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)) : 'freshtv348)
    | _ ->
        _menhir_fail ()

and _menhir_goto_or_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_or_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState72 | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337 * _menhir_state * 'tv_or_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OR ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | CYC | EOF | FRK | OBS | RCP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_or_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_or_atom)) = _menhir_stack in
            let _v : 'tv_cmd_obs_list = 
# 145 "parser.mly"
             ()
# 1533 "parser.ml"
             in
            _menhir_goto_cmd_obs_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv338)
    | MenhirState140 | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_or_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CYC ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | FRK ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | OBS ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | RCP ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | TEST ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv340)
    | _ ->
        _menhir_fail ()

and _menhir_goto_items : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_items -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * (
# 16 "parser.mly"
       (string)
# 1572 "parser.ml"
        )) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * (
# 16 "parser.mly"
       (string)
# 1578 "parser.ml"
        )) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 16 "parser.mly"
       (string)
# 1583 "parser.ml"
        ))), _, (_2 : 'tv_items)) = _menhir_stack in
        let _v : 'tv_items = 
# 107 "parser.mly"
              ( (_1::_2) )
# 1588 "parser.ml"
         in
        _menhir_goto_items _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_items)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command_std = 
# 91 "parser.mly"
                ()
# 1601 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)) : 'freshtv204)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state) * _menhir_state * 'tv_m_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state) * _menhir_state * 'tv_m_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_m_ope)), _, (_3 : 'tv_items)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command_std = 
# 92 "parser.mly"
                      ()
# 1614 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)) : 'freshtv208)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv210)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv212)
        | R_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | CYC | EOF | FRK | OBS | RCP | TEST ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv213 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_l_ope)), _, (_2 : 'tv_items)) = _menhir_stack in
                let _3 = () in
                let _v : 'tv_command_std = 
# 94 "parser.mly"
                      ()
# 1663 "parser.ml"
                 in
                _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv223 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv221 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_ope)), _, (_2 : 'tv_items)), _, (_4 : 'tv_items)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command_std = 
# 99 "parser.mly"
                            ()
# 1687 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv227 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv225 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_l_ope)), _, (_2 : 'tv_items)), _, (_4 : 'tv_items)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command_std = 
# 98 "parser.mly"
                            ()
# 1700 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
    | MenhirState118 | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_PRN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | L_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState44 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | L_PRN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | NUM _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | PRN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | CYC | EOF | FRK | OBS | RCP | TEST ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_items) * _menhir_state) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_command_std = 
# 90 "parser.mly"
                ()
# 1737 "parser.ml"
                 in
                _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv232)
        | NUM _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | PRN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | R_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState44 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | L_PRN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | NUM _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | PRN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | VAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv234)
        | VAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv236)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv239 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv237 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _), _, (_3 : 'tv_m_ope)), _, (_4 : 'tv_items)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command_std = 
# 101 "parser.mly"
                            ()
# 1786 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)) : 'freshtv240)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv242)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv245 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv243 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _), _, (_3 : 'tv_m_ope)), _, (_4 : 'tv_items)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_command_std = 
# 100 "parser.mly"
                            ()
# 1811 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv248)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv251 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv249 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _, (_2 : 'tv_m_ope)), _, (_4 : 'tv_items)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command_std = 
# 97 "parser.mly"
                            ()
# 1836 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv255 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv253 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _, (_2 : 'tv_m_ope)), _, (_4 : 'tv_items)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_command_std = 
# 96 "parser.mly"
                            ()
# 1849 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)) : 'freshtv256)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv259 * _menhir_state) * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 1857 "parser.ml"
        ))) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv257 * _menhir_state) * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 1863 "parser.ml"
        ))) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), (_3 : (
# 16 "parser.mly"
       (string)
# 1868 "parser.ml"
        ))), _, (_5 : 'tv_items)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_or_atom = 
# 154 "parser.mly"
                               ()
# 1876 "parser.ml"
         in
        _menhir_goto_or_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OPER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv269 * _menhir_state) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                let (_v : (
# 16 "parser.mly"
       (string)
# 1897 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | L_OPR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv263 * _menhir_state) * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 1908 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv261 * _menhir_state) * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 1915 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_items)), (_4 : (
# 16 "parser.mly"
       (string)
# 1920 "parser.ml"
                    ))) = _menhir_stack in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_or_atom = 
# 153 "parser.mly"
                               ()
# 1928 "parser.ml"
                     in
                    _menhir_goto_or_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
                | CYC | EOF | FRK | OBS | OR | RCP | TEST ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv265 * _menhir_state) * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 1936 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_items)), (_4 : (
# 16 "parser.mly"
       (string)
# 1941 "parser.ml"
                    ))) = _menhir_stack in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_or_atom = 
# 152 "parser.mly"
                         ()
# 1948 "parser.ml"
                     in
                    _menhir_goto_or_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv267 * _menhir_state) * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 1958 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv271 * _menhir_state) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv275 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv281 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 1981 "parser.ml"
        ))) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv279 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 1987 "parser.ml"
        ))) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (_2 : (
# 16 "parser.mly"
       (string)
# 1992 "parser.ml"
        ))), _, (_4 : 'tv_items)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_fork_atom = 
# 171 "parser.mly"
                            ()
# 1999 "parser.ml"
         in
        _menhir_goto_fork_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)) : 'freshtv282)
    | MenhirState133 | MenhirState124 | MenhirState76 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv284)
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OPER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv293 * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                let (_v : (
# 16 "parser.mly"
       (string)
# 2032 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | L_OPR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2043 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2050 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_items)), (_3 : (
# 16 "parser.mly"
       (string)
# 2055 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _v : 'tv_fork_atom = 
# 169 "parser.mly"
                            ()
# 2062 "parser.ml"
                     in
                    _menhir_goto_fork_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
                | CYC | EOF | FOR | FRK | OBS | RCP | TEST ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2070 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_items)), (_3 : (
# 16 "parser.mly"
       (string)
# 2075 "parser.ml"
                    ))) = _menhir_stack in
                    let _2 = () in
                    let _v : 'tv_fork_atom = 
# 168 "parser.mly"
                      ()
# 2081 "parser.ml"
                     in
                    _menhir_goto_fork_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2091 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv295 * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
        | CYC | EOF | FOR | FRK | OBS | RCP | TEST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_items)) = _menhir_stack in
            let _v : 'tv_fork_atom = 
# 170 "parser.mly"
           ()
# 2109 "parser.ml"
             in
            _menhir_goto_fork_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OPER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv307 * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                let (_v : (
# 16 "parser.mly"
       (string)
# 2137 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv305 * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                let ((_5 : (
# 16 "parser.mly"
       (string)
# 2145 "parser.ml"
                )) : (
# 16 "parser.mly"
       (string)
# 2149 "parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_items)), _, (_3 : 'tv_items)) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_fork_atom = 
# 172 "parser.mly"
                                  ()
# 2157 "parser.ml"
                 in
                _menhir_goto_fork_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv309 * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_items)) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | R_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OPER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                let (_v : (
# 16 "parser.mly"
       (string)
# 2192 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | L_OPR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2203 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2210 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_items)), (_3 : (
# 16 "parser.mly"
       (string)
# 2215 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _v : 'tv_command_cycle = 
# 176 "parser.mly"
                            ()
# 2222 "parser.ml"
                     in
                    _menhir_goto_command_cycle _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
                | CYC | EOF | FRK | OBS | RCP ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2230 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_items)), (_3 : (
# 16 "parser.mly"
       (string)
# 2235 "parser.ml"
                    ))) = _menhir_stack in
                    let _2 = () in
                    let _v : 'tv_command_cycle = 
# 175 "parser.mly"
                      ()
# 2241 "parser.ml"
                     in
                    _menhir_goto_command_cycle _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_items)) * (
# 16 "parser.mly"
       (string)
# 2251 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv327 * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
    | _ ->
        _menhir_fail ()

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FOR ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | R_OPR ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | CYC | EOF | FRK | OBS | RCP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_fork_list = 
# 162 "parser.mly"
         ()
# 2292 "parser.ml"
         in
        _menhir_goto_fork_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_goto_command_cycle : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_command_cycle -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_command_cycle) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((_2 : 'tv_command_cycle) : 'tv_command_cycle) = _v in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_command = 
# 85 "parser.mly"
                       ()
# 2315 "parser.ml"
     in
    _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)

and _menhir_goto_fork : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fork -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState116 | MenhirState122 | MenhirState123 | MenhirState133 | MenhirState135 | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fork) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_fork) : 'tv_fork) = _v in
        ((let _v : 'tv_program_command = 
# 51 "parser.mly"
         ()
# 2334 "parser.ml"
         in
        _menhir_goto_program_command _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fork) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_fork) : 'tv_fork) = _v in
        ((let _v : (
# 27 "parser.mly"
      (unit)
# 2349 "parser.ml"
        ) = 
# 42 "parser.mly"
         ()
# 2353 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 27 "parser.mly"
      (unit)
# 2361 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 27 "parser.mly"
      (unit)
# 2369 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 27 "parser.mly"
      (unit)
# 2377 "parser.ml"
        )) : (
# 27 "parser.mly"
      (unit)
# 2381 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv182)) : 'freshtv184)) : 'freshtv186)) : 'freshtv188)) : 'freshtv190)
    | _ ->
        _menhir_fail ()

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (int)
# 2390 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "parser.mly"
       (int)
# 2400 "parser.ml"
    )) : (
# 17 "parser.mly"
       (int)
# 2404 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 189 "parser.mly"
        ( Val _1 )
# 2409 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | CYC | EOF | FRK | OBS | RCP | TEST ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command_std = 
# 89 "parser.mly"
          ()
# 2429 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
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
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_calc = 
# 183 "parser.mly"
        ( Cst 0 )
# 2466 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (int)
# 2473 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 17 "parser.mly"
       (int)
# 2483 "parser.ml"
    )) : (
# 17 "parser.mly"
       (int)
# 2487 "parser.ml"
    )) = _v in
    ((let _v : 'tv_calc = 
# 190 "parser.mly"
        ( Cst _1 )
# 2492 "parser.ml"
     in
    _menhir_goto_calc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | CYC | EOF | FRK | OBS | RCP | TEST ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_command_std = 
# 88 "parser.mly"
            ()
# 2520 "parser.ml"
         in
        _menhir_goto_command_std _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | R_OPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState63 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OPER _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            let (_v : (
# 16 "parser.mly"
       (string)
# 2569 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | L_OPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv153 * _menhir_state) * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2580 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ITM _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
                | CYC | EOF | FRK | OBS | OR | RCP | TEST ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv151 * _menhir_state) * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2592 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), (_3 : (
# 16 "parser.mly"
       (string)
# 2597 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_or_atom = 
# 151 "parser.mly"
                         ()
# 2605 "parser.ml"
                     in
                    _menhir_goto_or_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv154)
            | CYC | EOF | FRK | OBS | OR | RCP | TEST ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv155 * _menhir_state) * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2617 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _), (_3 : (
# 16 "parser.mly"
       (string)
# 2622 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_or_atom = 
# 150 "parser.mly"
                   ()
# 2629 "parser.ml"
                 in
                _menhir_goto_or_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv157 * _menhir_state) * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2639 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | CYC | EOF | FRK | OBS | OR | RCP | TEST ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_or_atom = 
# 149 "parser.mly"
        ()
# 2658 "parser.ml"
         in
        _menhir_goto_or_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OPER _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "parser.mly"
       (string)
# 2678 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv143 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2689 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ITM _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv144)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv145 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2707 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
       (string)
# 2722 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | CYC | EOF | FOR | FRK | L_PRN | L_SRC | NUM _ | OBS | OR | PRN | RCP | R_OPR | R_SRC | TEST | VAL _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 16 "parser.mly"
       (string)
# 2736 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 16 "parser.mly"
       (string)
# 2741 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_items = 
# 106 "parser.mly"
          ( [_1] )
# 2746 "parser.ml"
         in
        _menhir_goto_items _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | L_SRC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | R_OPR ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | R_SRC ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "parser.mly"
       (string)
# 2793 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OR ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FOR ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | R_OPR ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | R_OPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState96 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OPER _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
            let (_v : (
# 16 "parser.mly"
       (string)
# 2852 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | L_OPR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv127 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2863 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv125 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2870 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (_2 : (
# 16 "parser.mly"
       (string)
# 2875 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_command_cycle = 
# 177 "parser.mly"
                      ()
# 2882 "parser.ml"
                 in
                _menhir_goto_command_cycle _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)) : 'freshtv128)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv129 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2892 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)) : 'freshtv136)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_reduce44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _1 = () in
    let _v : 'tv_fork = 
# 63 "parser.mly"
         ()
# 2914 "parser.ml"
     in
    _menhir_goto_fork _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_fork_proc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_or_atom) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_fork_proc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * 'tv_prg_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_program_command) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_or_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 2981 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv44)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv48)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * 'tv_fork_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 3038 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_or_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv65 * _menhir_state) * _menhir_state) * (
# 16 "parser.mly"
       (string)
# 3057 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * (
# 16 "parser.mly"
       (string)
# 3071 "parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv70)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * 'tv_items) * _menhir_state * 'tv_m_ope)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_items) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state * 'tv_items) * _menhir_state) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_items) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_l_ope) * _menhir_state * 'tv_items)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_l_ope) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * 'tv_items) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * 'tv_m_ope) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_ope_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_calc)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_calc)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * 'tv_calc)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * 'tv_calc)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 16 "parser.mly"
       (string)
# 3194 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv124)

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | L_PRN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | L_SRC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | NUM _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | PRN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | R_OPR ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | R_SRC ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | VAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118

and _menhir_run120 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "parser.mly"
       (string)
# 3257 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OR ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run123 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CYC ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | FRK ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | OBS ->
        _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | RCP ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | TEST ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123

and _menhir_run124 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ITM _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | R_OPR ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124

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
# 25 "parser.mly"
      (Env.command)
# 3338 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CYC ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FRK ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | OBS ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RCP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv10))

and code : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 26 "parser.mly"
      (Env.command list)
# 3363 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CYC ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | FRK ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | OBS ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | RCP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv8))

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 27 "parser.mly"
      (unit)
# 3388 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FRK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState114 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CYC ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | FRK ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | OBS ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | RCP ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | TEST ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv2)
    | TEST ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState114 in
        (_menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv6))

# 233 "/home/kohe/.opam/system/lib/menhir/standard.mly"
  

# 3432 "parser.ml"
