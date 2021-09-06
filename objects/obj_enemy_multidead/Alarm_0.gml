/// @description Create dead parts
with instance_create(x,y,obj_enemy_dead)
{
    sprite_index = other.killsprite
    image_xscale = other.killxscale
}

//Decrement count
count--

//Make more if the count is not zero
if count > 0
    alarm[0] = 8

//Otherwise, destroy
else
    instance_destroy()

