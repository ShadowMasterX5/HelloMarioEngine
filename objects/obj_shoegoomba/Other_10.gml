/// @description Shoe goomba death
with instance_create(round(x),round(y+16),obj_enemy_dead)
{
    sprite_index = spr_kuriboshoe
    image_index = other.image_index
    image_xscale = other.direct
}

//Destroy
instance_destroy()

