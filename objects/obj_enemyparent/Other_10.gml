/// @description Default enemy death script
with instance_create(round(x),round(y+sprite_height),obj_enemy_dead)
{
    sprite_index = other.sprite_index
    image_index = other.image_index
}

//Destroy
instance_destroy()

