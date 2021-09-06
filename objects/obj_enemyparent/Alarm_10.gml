/// @description Detect Mario, and walk towards him
if hspeed = 0
{
    if not instance_exists(obj_mario)
    or obj_mario.x < x
        hspeed = -0.5
    else
        hspeed = 0.5
}

