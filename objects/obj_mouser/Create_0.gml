/// @description Loves to throw bombs

//How vulnerable is this enemy to various items?
hardness = 99

//How vulnerable is this enemy to Mario?
stomp = 2

//How many hits before this boss dies
hitpoints = 3

//Facing direction
direct = -1

//Do not animate
image_speed = 0

//A collision object for Mario to ride
mytop = instance_create(x-8,y,obj_solidtop)

//State variable
ready = 0

//Animation variable
anim = 0

//Handle animation
alarm[1] = 7

