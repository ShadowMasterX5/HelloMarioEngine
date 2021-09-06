/// @description Just a bullet bill

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 0

//Do not animate
image_speed = 0

//Facing direction
if not instance_exists(obj_mario)
or obj_mario.x < x
    direct = -1
else
    direct = 1

//Move
hspeed = direct*1.5

//Change depth after exiting cannon
alarm[0] = 12

