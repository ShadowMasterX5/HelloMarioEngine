/// @description Spit out spike balls

//If spike is on the ground, and Mario is not too close
if gravity = 0
and instance_exists(obj_mario)
and (obj_mario.x < x-32 or obj_mario.x > x+32)
{

    //Change sprite
    sprite_index = spr_spike_throw

    //Begin animation
    image_index = 0
    image_speed = 0.05

    //Stop moving
    hspeed = 0

    //Create spike ball
    with instance_create(round(x-8),y,obj_spikeball) dir = other.direct

    //Continue walking later
    alarm[1] = 52

}

//Otherwise, delay the spike ball
else
    alarm[0] = 1

