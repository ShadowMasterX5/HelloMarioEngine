/// @description Hurt Mario when necessary
if harmmario = 1
{
    with other event_user(0)
    if sprite_index = spr_redbrick_th
    or sprite_index = spr_bombbrick_th
    {
        event_user(0)
        instance_destroy()
    }
}

