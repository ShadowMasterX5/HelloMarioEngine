/// @description Hop
if ready = 0
{

    //Move up
    vspeed = -6

    //Boost jump
    y--

    //Change sprite
    sprite_index = spr_boomboom_misc

    //Use appropriate image index
    image_speed = 0
    image_index = 0

    //Hop again later
    alarm[2] = 150

}

