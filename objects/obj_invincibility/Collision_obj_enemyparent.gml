/// @description Insta-kill enemies
if visible = 1
and other.hardness < 99
{
    scr_musicalscale(id,other.id,1)
    with other
    {
        hitpoints = 0
        event_user(0)
    }
}

