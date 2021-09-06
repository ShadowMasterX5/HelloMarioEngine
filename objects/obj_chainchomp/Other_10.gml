/// @description Chain chomp death
with instance_create(round(x),round(y+16),obj_enemy_dead)
{
    sprite_index = other.sprite_index
    image_index = other.image_index
}

//Kill chains
with instance_create(round(x),round(y+16),obj_enemy_multidead)
{
    killsprite = spr_chain
    count = 4
}

//Destroy
instance_destroy()

