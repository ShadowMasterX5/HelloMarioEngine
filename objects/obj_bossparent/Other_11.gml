/// @description Default boss stomp script
if ready = 1
    audio_play_sound(snd_stomp,0,0)
else
{
    scr_musicalscale(obj_mario.id,id,1)
    event_user(0)
}

