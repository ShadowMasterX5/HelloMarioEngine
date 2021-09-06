/// @description Shatter when touched by Mario while a switch is on
if collision_rectangle(bbox_left-1,bbox_top-1,bbox_right+1,bbox_bottom+1,obj_mario,0,0)
and obj_levelmanager.switchon = 1
{
    audio_play_sound(snd_bump,0,0)
    event_user(0)
}

