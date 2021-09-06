/// @description Get ready to hide

//If Mario is too close, wait
if instance_exists(obj_mario)
and obj_mario.x > x-32 and obj_mario.x < x+32
    alarm[0] = 1

//Otherwise, prepare to hide
else
{
    hspeed = 0
    alarm[1] = 10
}

