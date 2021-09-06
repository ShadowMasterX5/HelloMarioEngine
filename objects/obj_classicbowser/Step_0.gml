/// @description Idiot logic?

//Default event
event_inherited()

//Move back and forth
if ready = 0
{
    if x > xstart
        hspeed = -0.5
    else if x < xstart-48
        hspeed = 0.5
}

