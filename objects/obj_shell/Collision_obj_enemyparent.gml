/// @description Hurt enemies

//Yes, you do need to check if yourself exists. Blame GM Studio...
if hspeed != 0
and instance_exists(id)
and other.hardness < 99
{
    scr_musicalscale(id,other.id,1)
    with other event_user(0)
}

