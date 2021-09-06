/// @description Banzai bill logic
if hspeed = 0 xor outside_view()
{
    if hspeed = 0
    {
        hspeed = -1.5
        audio_play_sound(snd_thwomp,0,0)
    }
    else
        instance_destroy()
}

