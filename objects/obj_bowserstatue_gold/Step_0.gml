/// @description Gold bowser statue logic

//Default event
event_inherited()

//Statue sprite is backwards
if hspeed != 0
    direct = -direct

//Stop moving after landing, and hop again
if gravity = 0
{
    if hspeed != 0
    {
        hspeed = 0
        alarm[0] = 100
    }
}

//Extra gravity
else
    gravity = 0.3

///Change image index when falling back down
if vspeed > 0
    image_index = 0

