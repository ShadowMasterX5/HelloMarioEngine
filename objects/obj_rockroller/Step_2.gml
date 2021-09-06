/// @description Snap to Mario if he exists and is in the right suit
if instance_exists(obj_mario)
and global.powerup = cs_rock
{
    x = obj_mario.x
    y = obj_mario.y+10
    obj_mario.invincible = 1
}

//Otherwise, destroy
else
    instance_destroy()

