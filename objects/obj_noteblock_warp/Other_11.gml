/// @description Make Mario bounce
with obj_mario
{

    //Make Mario bounce
    event_user(1)
    vspeed = -5.2

    //If Mario bounces high
    if jumpnow = 1
    {

        //Play the spring sound
        audio_play_sound(snd_spring,0,0)

        //Create a note block warp Mario, and inherit direction and holding variables
        with instance_create(obj_mario.x,obj_mario.y,obj_warpnoteblock)
        {
            direct = other.direct
            holding = other.holding
        }

        //Set the warp value
        obj_warpnoteblock.myroom = other.myroom

        //Destroy
        instance_destroy()

    }

}

