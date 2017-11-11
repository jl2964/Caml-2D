open State

(*Represents an object in the game*)
type entity

(*[is_obst] is true if the entity is an obstacle and false otherwise.
  An obstacle is any entity that will cause a game over if the player entity
  were to collide with it.*)
val is_obst : bool

(*[pos] is the position of the entity*)
val pos : position

(*[evel] is the velocity of the entity*)
val evel : vel

(*[eacc] is the acceleration of the entity*)
val eacc : acc

(*Pair of positions where the first is the bottom left corner of the hitbox
  and the second is the top right corner.*)
type hitbox = position * position
