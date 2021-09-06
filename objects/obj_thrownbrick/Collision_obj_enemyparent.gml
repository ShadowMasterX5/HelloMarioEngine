/// @description Hurt enemies
if other.hardness < 99
{
    scr_musicalscale(id,other.id,1)
    with other event_user(0)

    //Shatter if held, or if red/bomb brick
    if held = 1
    or sprite_index = spr_redbrick_th
    or sprite_index = spr_bombbrick_th
        event_user(0)

}

