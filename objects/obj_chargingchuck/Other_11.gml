/// @description Chuck stomping

//If the chuck is hurting, play sounds only
if ready = 1
    audio_play_sound(snd_stomp,0,0)

//Otherwise, hurt the chuck
else
{
    scr_musicalscale(obj_mario.id,id,1)
    event_user(0)
}

