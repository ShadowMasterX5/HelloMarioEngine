/// @description Bounce Mario off the spring

//Animate
image_speed = 0.5

//Make Mario do a super bounce
with other
{
    event_user(1)
    if jumpnow = 1
    {
        audio_play_sound(snd_superspring,0,0)
        audio_play_sound(snd_yahoo,0,0)
        vspeed = -6.7
    }
    else
    {
        audio_play_sound(snd_spring,0,0)
        vspeed = -5.2
    }
}


