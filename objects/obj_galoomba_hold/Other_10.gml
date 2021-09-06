/// @description Kill galoomba
with instance_create(round(x+8),round(y+16),obj_enemy_dead)
{
    sprite_index = spr_galoomba
    image_index = other.image_index
}

//Destroy
instance_destroy()

