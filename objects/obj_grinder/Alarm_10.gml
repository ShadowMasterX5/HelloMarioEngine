/// @description Detect Mario, and move towards him
if hspeed = 0
{
    if not instance_exists(obj_mario)
    or obj_mario.x < x
        hspeed = -1.5
    else
        hspeed = 1.5
}

