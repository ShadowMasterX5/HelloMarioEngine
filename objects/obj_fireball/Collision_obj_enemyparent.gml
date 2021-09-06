/// @description Kill enemies
if other.hardness = 0
{
    audio_play_sound(snd_kick,0,0)
    with instance_create(other.x,other.y,obj_score) event_user(0)
    with other event_user(0)
}

//Get killed
if other.hardness < 100
    event_user(0)

