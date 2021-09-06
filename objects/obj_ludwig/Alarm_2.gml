/// @description Hop
if ready = 0
{

    //If Ludwig can hop
    if sprite_index = spr_ludwig
    and gravity = 0
    {

        //Move up
        vspeed = -3

        //Boost jump
        y--

        //Use appropriate image index
        image_speed = 0
        image_index = 1

    }

    //Hop again later
    alarm[2] = 60

}

