/// @description Make Mario bounce
with obj_mario
{

    //Make Mario bounce
    event_user(1)
    vspeed = -5.2

    //Play the spring sound if Mario bounces high
    if jumpnow = 1
        audio_play_sound(snd_spring,0,0)

}

