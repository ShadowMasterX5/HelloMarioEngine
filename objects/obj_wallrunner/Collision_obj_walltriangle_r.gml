/// @description Make Mario run from the right wall to the ground
if direct = -1
and direction = 270
{
    obj_mario.hspeed = -speed
    instance_destroy()
}

