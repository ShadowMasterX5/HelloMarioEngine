/// @description Spiny killing
with instance_create(round(x-8),round(y),obj_enemy_dead)
{
    sprite_index = spr_spiny_dead
    image_yscale = 1
}

//Destroy
instance_destroy()

