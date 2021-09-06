/// @description Iceball logic

//Previous hspeed
prevhspeed = hspeed

//Default event
event_inherited()

//If the direction changed, destroy
if hspeed != prevhspeed
    event_user(0)

//Destroy outside view
if outside_view()
    instance_destroy()

//Bounce
if gravity = 0
{
    vspeed = -2.5
    y--
}

