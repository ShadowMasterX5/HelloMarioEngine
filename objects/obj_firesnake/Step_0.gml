/// @description Fire snake logic

//Wall collisions
event_user(3)

//Floor collisions
event_user(4)

//If on the ground
if gravity = 0
{

    //Land if it is still moving
    if hspeed != 0
    {
        hspeed = 0
        alarm[0] = 100
    }

    //Otherwise, face Mario
    else if instance_exists(obj_mario)
    {
        if x+8 > obj_mario.x
            direct = -1
        else
            direct = 1
    }

}

//Use less gravity
else
    gravity = 0.15

