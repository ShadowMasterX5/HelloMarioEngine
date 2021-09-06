/// @description The koopaling with the balls

//How vulnerable is this enemy to various items?
hardness = 99

//How vulnerable is this enemy to Mario?
stomp = 5

//How many hits before this boss dies
hitpoints = 3

//Facing direction
direct = -1

//Do not animate
image_speed = 0

//State variable
ready = 0

//Create ball to ride on
with instance_create(x-8,y+14,obj_lemmyball) follow = other.id

//Move on top of ball
y -= 18

