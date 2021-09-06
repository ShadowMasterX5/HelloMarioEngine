/// @description Fire snake desth
with instance_create(round(x),round(y+16),obj_enemy_dead)
{
    sprite_index = other.sprite_index
    image_index = other.image_index
}

//Fire snake tail death
with instance_create(round(x),round(y+16),obj_enemy_multidead)
{
    killsprite = spr_firesnake_part
    count = 4
}

//Destroy
instance_destroy()

