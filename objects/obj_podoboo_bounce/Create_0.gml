/// @description Wall bouncing fire

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 2

//Facing direction
direct = -1
vdirect = -1

//Animate
image_speed = 0.3

//Choose starting direction
if place_snapped(1,32)
    vspeed = 1
else
    vspeed = -1
if place_snapped(32,1)
    hspeed = 1
else
    hspeed = -1

