/// @description Make sounds when in view
if outside_view()
    with rope
        if outside_view()
            other.alarm[0] = 101
if alarm[0] != 101
{
    audio_stop_sound(snd_engine)
    audio_play_sound(snd_engine,0,0)
}
alarm[0] = 15

