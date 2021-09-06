/// @description Hop
if ready = 0
{

    //If Iggy can hop
    if sprite_index = spr_iggy
    and gravity = 0
    {

        //Hop higher if hurt
        if hitpoints = 1
            vspeed = -7
        else
            vspeed = -4

        //Boost jump
        y--

        //Use appropriate image index
        image_speed = 0
        image_index = 1

    }

    //Hop again later
    alarm[2] = 30

}

