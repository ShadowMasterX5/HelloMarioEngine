/// @description Jump at Mario

//Change sprite
sprite_index = spr_wendy_jump

//Animate
image_speed = 0.15

//Reset state
alarm[10] = 100

//Move up
vspeed = -6

//Boost jump
y--

//Jump towards Mario
if not instance_exists(obj_mario)
or obj_mario.x < x
    hspeed = -1.5
else
    hspeed = 1.5

