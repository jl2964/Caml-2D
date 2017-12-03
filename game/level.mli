open Entities
open State

(*[objects] is the list of all entities on the current level.*)
val objects : entity list

(*[start_pos] is where the player starts off on the current level.*)
val start_pos : pos

(*[exit] is the position the player needs to be in to continue to the next level.*)
val exit : pos

(*[holes] is the list of positions of spots in the level map
  where, if the player were collide with any of those positions,
  the game would end.*)
val holes : pos list