/// @description Charge after Mario

//If Mario exists, and the chuck is not hurting
if ready = 0
and instance_exists(obj_mario)
{

    //Face Mario
    if obj_mario.x < x
        direct = -1
    else
        direct = 1

    //Charge
    hspeed = direct

    //Run sprite
    sprite_index = spr_chargingchuck

    //Faster animation speed
    image_speed = 0.15

    //Pause to take a break
    alarm[0] = 200

}

//Otherwise, wait
else
    alarm[10] = 60

