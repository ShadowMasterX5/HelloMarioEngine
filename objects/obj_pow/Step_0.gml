/// @description Thrown POW logic
if held = 1
{

    //Previous hspeed
    prevhspeed = hspeed

    //Wall collisions
    event_user(3)

    //Floor collisions
    event_user(4)

    //If the direction changed, or it landed, blow up
    if hspeed != prevhspeed
    or gravity = 0
        event_user(15)

}

