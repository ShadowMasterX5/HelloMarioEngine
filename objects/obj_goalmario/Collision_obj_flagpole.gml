/// @description When Mario reaches the bottom of the flagpole
if ready = 0
and y > other.y+128
{

    //Stop moving
    vspeed = 0

    //Snap to bottom of the flagpole
    y = other.y+128

    //Ready to jump state
    ready = 1

    //Move left 3 pixels
    x -= 3

    //Face left
    image_xscale = -1

}

