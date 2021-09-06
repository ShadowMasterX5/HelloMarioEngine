/// @description Begin lifting

//If the pulled item is heavy, take longer
if pulled.isheavy = 1
{
    audio_play_sound(snd_eeegh,0,0)
    alarm[0] = 90
}

//Otherwise, take less time
else
{
    audio_play_sound(snd_ya,0,0)
    alarm[0] = 20
}

