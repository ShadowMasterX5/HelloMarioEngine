/// @description What happens after landing

//Default event
event_inherited()

//Hop
if gravity = 0
{

    //Bounce if a green ball
    if sprite_index = spr_lakitu_ball
    {
        vspeed = -4
        y--
    }

    //Otherwise, become a spiny
    else
    {
        instance_create(x+8,y,obj_spiny)
        instance_destroy()
    }

}

//Use more gravity
else
    gravity = 0.2

