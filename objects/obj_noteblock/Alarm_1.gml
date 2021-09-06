/// @description Finish block bump
y = ystart
ready = 0

//If this note block has a powerup
if sprout != cs_coin
{

    //Make the powerup
    with instance_create(x,y,obj_powerupsprout)
    {
        sprite_index = scr_constant_get_sprite(other.sprout)

        //Force it down if Mario bounced on top of the note block
        if vspeed = -0.5
        and other.vspeed = -2
            vspeed = 0.5

    }

    //Empty the note block
    sprout = cs_coin

}

//Stop moving
vspeed = 0

