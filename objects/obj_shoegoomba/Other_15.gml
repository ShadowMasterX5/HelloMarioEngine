/// @description Shoe goomba flip

//Only make a shoe if flipped by a block
if place_meeting(x,y,obj_blockparent)
{

    //Kill the goomba in the shoe
    with instance_create(round(x),round(y+sprite_height),obj_enemy_dead) sprite_index = spr_goomba

    //Make a Kuribo Shoe
    with instance_create(x,y-6,obj_getshoe)
    {
        vspeed = -5
        direct = other.direct
    }

    //Destroy
    instance_destroy()

}

//Normal death otherwise
else
    event_user(0)

