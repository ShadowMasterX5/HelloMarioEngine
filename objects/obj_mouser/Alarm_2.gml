/// @description Hop
if ready = 0
and image_index = 0
{

    //Move up
    vspeed = -3

    //Boost jump
    y--

    //Hop again later
    alarm[2] = 60

}

