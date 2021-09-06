/// @description Snap to Mario if he exists and is in the right suit
if instance_exists(obj_mario)
and (global.powerup = cs_leaf or global.powerup = cs_tanooki)
{
    x = obj_mario.x
    y = obj_mario.y
    bumper.x = x-8
    bumper.y = y+16
}

//Otherwise, destroy
else
    instance_destroy()

