/// @description Change sprites and state, or destroy
if ready = 0
{
    ready = 1
    event_user(15)
    audio_play_sound(snd_flames,0,0)
}
else if ready = 2
{
    ready = 3
    event_user(15)
}
else if ready = 3
    instance_destroy()

