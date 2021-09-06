/// @description Hop
if ready = 0
{

    //Use hop pose
    image_index = 1

    //Move up
    vspeed = -1

    //Boost jump
    y--

    //Hop state
    ready = -4

    //Finish hop
    alarm[1] = 40

}
else
    alarm[0] = 3

