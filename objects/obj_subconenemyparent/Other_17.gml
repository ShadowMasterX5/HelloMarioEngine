/// @description Default enemy lift script
with instance_create(obj_mario.x,obj_mario.y+11,obj_vegenemy)
{
    sprite_index = other.sprite_index
    image_index = other.image_index
}

//Make Mario hold it
obj_mario.holding = 1

//Destroy
instance_destroy()

