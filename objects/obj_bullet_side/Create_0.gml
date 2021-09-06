/// @description Sideways bullet bill

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 0

//Facing direction
if not instance_exists(obj_mario)
or obj_mario.y > y
    direct = -1
else
    direct = 1

//Move
vspeed = -direct*1.5

//Change depth after exiting cannon
alarm[0] = 12

