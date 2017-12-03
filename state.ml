open Entities
open Command

type position = int * int

(* keeps track of which keys are pressed down
 * makes it easier to do physics *)
type pressed = {
  w_up       : bool;
  a_left     : bool;
  d_right    : bool;
  space_jump : bool
}

type state = {
  pressed_keys : pressed;
}

let vel s = 0.0

let acc s = 0.0

let num_jumps = ref 2

let update_jumps i n =
  if (!n) = 0 then 0
  else
    match i with
    | Jump -> (!n) - 1
    | _    -> !n

let has_jump = if !num_jumps > 0 then true else false

let level s = 0

let completed s = []

let pos_list = []

let init_state ():state = {
  pressed_keys = {w_up = false;a_left = false;d_right = false;space_jump = false};
}
