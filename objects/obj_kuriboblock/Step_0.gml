/// @description Shatter when stomped on with a shoe
if global.yoshi = 2
and instance_exists(obj_mario)
and obj_mario.vspeed > 0
and place_meeting(x,y-obj_mario.vspeed*2.5,obj_mario)
{
    with obj_mario event_user(1)
    audio_play_sound(snd_bump,0,0)
    event_user(0)
}

