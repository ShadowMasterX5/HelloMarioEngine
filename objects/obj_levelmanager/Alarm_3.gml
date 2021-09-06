/// @description Play the hurry up sound

//Delay the sound if a star/switch is in effect
if audio_is_playing(snd_starman)
or audio_is_playing(snd_switchsong)
    alarm[3] = 60
else
{

    //Hurry up!
    audio_play_sound(snd_hurryup,1,0)

    //Stop the music
    alarm[1] = 1

    //Play the music after the hurry up sound is done
    alarm[0] = 120

}

