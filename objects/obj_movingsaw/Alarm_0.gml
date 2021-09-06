/// @description Make sounds when in view
if not outside_view()
{
    audio_stop_sound(snd_engine)
    audio_play_sound(snd_engine,0,0)
}
alarm[0] = 15

