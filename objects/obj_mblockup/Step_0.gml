/// @description Thrown block logic
if held = 1
{

    //Previous hspeed
    prevhspeed = hspeed

    //Wall collisions
    event_user(3)

    //Floor collisions
    event_user(4)

    //If the direction changed, stop horizontal motion
    if hspeed != prevhspeed
        hspeed = 0

    //Become a block after landing, but only if Mario is not there
    if gravity = 0
    and not place_meeting(x,y,obj_mario)
    {
        instance_create(x,round(y-16),obj_mblock)
        instance_destroy()
    }

}

