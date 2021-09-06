/// @description Hurt enemies
if (hspeed != 0 or held = 1)
and other.hardness < 99
{
    scr_musicalscale(id,other.id,1)
    with other event_user(0)
    event_user(0)
}

