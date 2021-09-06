/// @description Bumped by a block
if hardness < 99
and other.vspeed < 0
{
    audio_play_sound(snd_kick,0,0)
    with instance_create(x,y,obj_score) event_user(0)
    event_user(5)
}

