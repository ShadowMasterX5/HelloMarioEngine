/// @description Wall jumping shroom logic

//Previous hspeed
prevhspeed = hspeed

//Wall collisions
event_user(3)

//Floor collisions
event_user(4)

//If the direction changed
if hspeed != prevhspeed
{

    //Move up
    vspeed = -5

    //Boost jump
    y--

}

