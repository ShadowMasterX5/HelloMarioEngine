/// @description Dino torch squishing
with instance_create(round(x),y,obj_stomped)
{
    sprite_index = spr_dinotorch_sq
    image_xscale = other.direct
}

//Destroy
instance_destroy()

