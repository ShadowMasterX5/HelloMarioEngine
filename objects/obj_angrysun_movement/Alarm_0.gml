/// @description Small circular motions

//If Mario is in its territory, get angry
if instance_exists(obj_mario)
and obj_mario.x > xmin
and obj_mario.x < xmax
{
    ready = 1
    speed = 4
    alarm[1] = 120
    direction = 270
    x = 288
    y = 48
}

//Otherwise, wait
else
{
    ready = 0
    speed = 0
    alarm[0] = 1
}

