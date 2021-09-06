/// @description If the item is not being held
if held = 0
{

    //Default event
    event_inherited()

    //Friction
    if hspeed > 0
        hspeed -= 0.075
    if hspeed < 0
        hspeed += 0.075
    if hspeed < 0.125
    and hspeed > -0.125
        hspeed = 0

}

