/// @description Maintain enemy y value
instance_activate_object(newenemy)
with newenemy
{
    if outside_view()
        instance_destroy()
    else
    {
        y = other.y+16
        vspeed = 0
        if depth = 10
            other.alarm[2] = 1
    }
}

