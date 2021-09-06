/// @description Heat seeking bullets... or maybe they are Mario seeking... Advanced!

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 0

//Animate
image_speed = 0.15

//Go after Mario
if not instance_exists(obj_mario)
or obj_mario.x < x
    hspeed = -1.5
else
    hspeed = 1.5

//Change depth after exiting cannon
alarm[0] = 12

