/// @description Thrown bomb logic
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
    {
        instance_create(x,y,obj_explosion)
        instance_destroy()
    }

}

