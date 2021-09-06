/// @description Finish peeking

//Do not animate
image_speed = 0
image_index = 0

//Face Mario
if instance_exists(obj_mario)
{
    if obj_mario.x > x
        direct = 1
    else
        direct = -1
}

//Jump
alarm[1] = 10

