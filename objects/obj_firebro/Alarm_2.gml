/// @description Spit fire

//If he is on the ground, spit
if gravity = 0
{
    with instance_create(x+8,y,obj_brofire)
    {
        hspeed = 3*other.direct
        image_xscale = other.direct
    }
    sprite_index = spr_firebro_spit
    alarm[3] = 25
}

//Otherwise, wait
else
    alarm[2] = 1

