/// @description Highly advanced bullet bill technology

//Destroy outside room
if outside_view()
    instance_destroy()

//Chase after Mario
if instance_exists(obj_mario)
{
    if obj_mario.x > x
    {
        hspeed += 0.05
        direct = 1
    }
    if obj_mario.x < x
    {
        hspeed += -0.05
        direct = -1
    }
    if hspeed > 1.5
        hspeed = 1.5
    if hspeed < -1.5
        hspeed = -1.5
}

