/// @description Floor collision + sprite change
if y < other.y-11 and vspeed > 0
{
    y = other.y-16
    vspeed = 0
    gravity = 0
    sprite_index = spr_bowserfire
}

