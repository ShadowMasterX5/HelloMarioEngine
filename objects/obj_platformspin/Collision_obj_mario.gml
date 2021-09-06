/// @description Fling Mario off when spinning
if image_speed = 0.5
{
    with other
    {
        if x > other.x+24
            hspeed = 3
        else
            hspeed = -3
        if y > other.y
            vspeed = 3
        else
            vspeed = -3
        jumpnow = 2
    }
}

