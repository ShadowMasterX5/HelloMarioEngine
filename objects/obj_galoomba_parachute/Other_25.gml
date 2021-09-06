/// @description Land
if ready = 0
{

    //Land
    ready = 1

    //Stop falling
    vspeed = 0

    //Take off parachute
    alarm[0] = 8

    //Change sprite
    sprite_index = spr_galoomba

    //Do not animate
    image_speed = 0

    //Look towards Mario
    if not instance_exists(obj_mario)
    or obj_mario.x < x
        image_xscale = -1
    else
        image_xscale = 1

}

