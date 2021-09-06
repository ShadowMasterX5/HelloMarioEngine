/// @description Come out

//If Mario exists and is not above, rise
if instance_exists(obj_mario)
and (obj_mario.x < x-32 or obj_mario.x > x+48)
{
    if obj_mario.x > x
        direct = 1
    else
        direct = -1
    vspeed = -0.75
    alarm[2] = 43
}

//Otherwise, wait
else
    alarm[1] = 1

