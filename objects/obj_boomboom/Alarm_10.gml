/// @description Go after Mario

//Sprite change
sprite_index = spr_boomboom

//Animate
image_speed = 0.15

//Go after Mario
if not instance_exists(obj_mario)
or obj_mario.x < x
    hspeed = -1
else
    hspeed = 1

//Reset state
ready = 0

//Become vulnerable
hardness = 2
stomp = 5

//Hop
alarm[2] = 75

