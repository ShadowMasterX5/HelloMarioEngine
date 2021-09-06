/// @description Use this to kill all in your way

//Go towards Mario
if not instance_exists(obj_mario)
or obj_mario.x < x+8
    hspeed = -1
else
    hspeed = 1

//Animate
image_speed = 0.3

