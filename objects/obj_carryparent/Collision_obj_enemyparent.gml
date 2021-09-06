/// @description Hurt enemies
if held = 1
and vspeed > 0
and other.hardness < 99
{
    scr_musicalscale(id,other.id,1)
    hspeed = hspeed/2
    vspeed = -3
    with other event_user(0)
}

