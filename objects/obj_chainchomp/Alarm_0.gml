/// @description Charge at Mario

//If Mario exists, charge
if instance_exists(obj_mario)
{
    ready = 1
    xtarget = obj_mario.x
    ytarget = obj_mario.y
    alarm[1] = 30
}

//Otherwise, wait
else
    alarm[0] = 30

