/// @description Start moving if Mario is on the rope
if type < 4
and speed = 0
and rope.ison = 1
{
    speed = 1
    alarm[0] = 15
    if type = 0
        direction = 0
    else if type = 1
        direction = 90
    else if type = 2
        direction = 270
    else if type = 3
        direction = 180
}

