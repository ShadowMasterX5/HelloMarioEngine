/// @description Activate blocks
with other
{
    if ready = 0
    {
        audio_play_sound(snd_bump,0,0)
        ready = 1
        vspeed = -2
        alarm[0] = 4
        event_user(0)
    }
}

