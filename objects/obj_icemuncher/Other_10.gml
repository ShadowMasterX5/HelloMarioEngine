/// @description Melt

//Create a blue muncher
with instance_create(x,y,obj_muncher)
{
    sprite_index = spr_muncher_b
    image_index = obj_muncher.image_index
}

//Create smoke
instance_create(x,y,obj_smoke)

//Destroy
instance_destroy()

