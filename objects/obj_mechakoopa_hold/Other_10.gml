/// @description Kill held bob-omb
with instance_create(round(x),round(y+16),obj_enemy_dead)
{
    sprite_index = other.sprite_index
    image_index = other.image_index
}

//Destroy
instance_destroy()

