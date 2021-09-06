/// @description Make Mario bounce
with obj_mario
{

    //Make Mario bounce
    event_user(1)

    //If Mario jumps high
    if jumpnow = 1
    {

        //Play a super spring sound
        audio_play_sound(snd_superspring,0,0)

        //Make a joyful shout
        audio_play_sound(snd_yahoo,0,0)

        //Jump extra high
        vspeed = -6.7

    }

    //Otherwise, jump normally
    else
        vspeed = -5.2

}

