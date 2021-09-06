/// @description Grass powerup logic

//If moving down
if vspeed > 0
{

    //Make the real powerup with the same speed
    with scr_sprite_make_object(x,y,sprite_index)
    {
        hspeed = other.hspeed
        vspeed = other.vspeed
    }

    //Destroy
    instance_destroy()

}

//Otherwise
{

    //Default event
    event_inherited()

    //Less gravity
    gravity = 0.125

}

