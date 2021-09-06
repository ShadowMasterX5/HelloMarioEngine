/// @description Lightning logic
if visible = 1
{

    //Default event
    event_inherited()

    //Create flames when landing on the ground
    if gravity = 0
    {

        //Become invisible
        visible = 0

        //Stop moving
        vspeed = 0

        //Play flames sound
        audio_play_sound(snd_flames,0,0)

        //Create first flame
        instance_create(x,y-16,obj_sumoflame)

        //Make more
        alarm[0] = 15

    }

    //More gravity
    else
        gravity = 0.3

}

