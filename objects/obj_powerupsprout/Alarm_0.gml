/// @description Finish sprouting

//Make an item, and bounce it if needed
with scr_sprite_make_object(x,y,sprite_index)
{
    if other.bounce = 1
    {
        y--
        vspeed = -3
    }
}

//Destroy
instance_destroy()

