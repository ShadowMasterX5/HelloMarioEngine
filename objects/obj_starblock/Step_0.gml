/// @description Shatter when hit with invincibility
if collision_rectangle(bbox_left-2,bbox_top-2,bbox_right+2,bbox_bottom+2,obj_invincibility,0,0)
{
    audio_play_sound(snd_bump,0,0)
    event_user(0)
}

