/// @description Shatter when hit with an explosion
if other.object_index = obj_explosion
{
    audio_play_sound(snd_bump,0,0)
    event_user(0)
}

