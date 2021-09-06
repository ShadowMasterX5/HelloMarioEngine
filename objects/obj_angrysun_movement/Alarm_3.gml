/// @description Small circular motions

//If Mario is in its territory, get angry
if instance_exists(obj_mario)
and obj_mario.x > xmin
and obj_mario.x < xmax
{
    ready = 2
    speed = 4
    alarm[4] = 120
    direction = 270
    x = 80
    y = 48

}

//Otherwise, wait
else
{
    ready = 0
    speed = 0
    alarm[3] = 1
}

