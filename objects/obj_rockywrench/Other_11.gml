/// @description Rocky wrench stomping
with instance_create(round(x),round(y),obj_enemy_stomped)
{
    sprite_index = spr_rockywrench_dead
    image_yscale = 1
    image_speed = 0.15
}

//Destroy
instance_destroy()

