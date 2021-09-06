/// @description Wiggler death
with instance_create(round(x),round(y+16),obj_enemy_dead)
{
    sprite_index = other.sprite_index
    image_index = other.image_index
    image_xscale = other.direct
}

//Make the other body parts too
with instance_create(round(x),round(y+16),obj_enemy_multidead)
{
    if other.sprite_index = spr_wiggler_mad
        killsprite = spr_wiggler_madbody
    else
        killsprite = spr_wiggler_body
    killxscale = other.direct
    count = 4
}

//Destroy
instance_destroy()

