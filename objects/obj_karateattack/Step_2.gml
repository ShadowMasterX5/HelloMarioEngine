/// @description Snap to Mario if he exists and is in the right suit
if instance_exists(obj_mario)
and global.powerup = cs_karate
{
    x = obj_mario.x
    if airdash = 1
    and obj_mario.hspeed != 0
    {
        obj_mario.y = y
        obj_mario.vspeed = 0
    }
    else
        y = obj_mario.y
    bumper.x = x+8*obj_mario.direct
    bumper.y = y
}

//Otherwise, destroy
else
    instance_destroy()

