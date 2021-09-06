/// @description Press the switch
if image_index = 0
{

    //Press the switch
    image_index = 1

    //Play a thwomp sound
    audio_play_sound(snd_thwomp,0,0)

    //Make P-Switch related stuff happen for 800 steps
    with obj_levelmanager
    {
        event_user(1)
        alarm[10] = 800
    }

    //Unpress the switch when it is all over
    alarm[0] = 800

}

