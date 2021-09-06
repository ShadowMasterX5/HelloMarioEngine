/// @description Walk towards Mario
if instance_exists(obj_mario)
{
    if obj_mario.x < x+8
        hspeed = -0.5
    else
        hspeed = 0.5
}
alarm[2] = 48

