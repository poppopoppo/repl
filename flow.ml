type num_t =
  | Num
  | DepNum of int
  | Exp of (num_t * num_t)

type t =
  | Tensor of (t list)
  | Par of (t list)
  | Choice of (t list)
  | Axm of string
  | Intr of (t * t)
