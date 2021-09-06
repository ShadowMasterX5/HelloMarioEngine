/// @description A ghastly snake

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 2

//Facing direction
direct = -1

//Do not animate
image_speed = 0
image_index = 1

//Select starting speeds
if place_snapped(1,32)
    vspeed = 1
else
    vspeed = -1
if place_snapped(32,1)
    hspeed = 1
else
    hspeed = -1

//Create boo trail
alarm[0] = 7

