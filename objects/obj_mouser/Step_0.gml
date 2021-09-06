/// @description Mouser logic

//Default event
event_inherited()

//If Mouser is vulnerable
if hardness = 2
{

    //Face Mario
    if instance_exists(obj_mario)
    {
        if obj_mario.x > x
            direct = 1
        if obj_mario.x < x
            direct = -1
    }

    //Move back and forth
    if x > xstart
        hspeed = -0.5
    else if x < xstart-32
        hspeed = 0.5

}

