/// @description Jump towards Mario

//Jump
vspeed = -7.5

//Boost jump
y--

//Towards Mario
if not instance_exists(obj_mario)
or obj_mario.x < x+8
    hspeed = -1.375
else
    hspeed = 1.375

//Jump state
ready = 3

