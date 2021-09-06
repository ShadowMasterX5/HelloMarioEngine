/// @description Star logic

//Default event
event_inherited()

//Hop when on the ground
if gravity = 0
{

    //Move up
    vspeed = -4

    //Boost jump
    y--

}

//Less gravity
else
    gravity = 0.125

