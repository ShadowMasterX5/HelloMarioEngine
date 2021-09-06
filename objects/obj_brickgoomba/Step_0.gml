/// @description Jumping koopa hopping

//Default event
event_inherited()

//Finish jump after landing
if gravity = 0
{
    if hspeed != 0
    {
        hspeed = 0
        alarm[0] = 100
    }
}

//More gravity
else
    gravity = 0.3

