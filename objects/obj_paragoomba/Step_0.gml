/// @description Paragoomba hopping

//Inherit usual step event
event_inherited()

//If the paragoomba is on the ground
if gravity = 0
{

    //Finish hopping
    if jumptype = 3
    {
        jumptype = 0
        sprite_index = spr_paragoomba
    }

    //Third hop
    else if jumptype = 2
    {
        vspeed = -3
        jumptype = 3
        alarm[0] = 100
    }

    //Second hop
    else if jumptype = 1
    {
        vspeed = -5
        jumptype = 2
    }

}

