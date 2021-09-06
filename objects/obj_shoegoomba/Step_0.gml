/// @description Shoe goomba landing

//Inherit usual step event
event_inherited()

//If the shoe goomba lands on the ground
if gravity = 0
and ready = 3
{

    //Reset state
    ready = 0

    //Stop horizontal speed
    hspeed = 0

    //Hop again
    alarm[0] = 50

}

