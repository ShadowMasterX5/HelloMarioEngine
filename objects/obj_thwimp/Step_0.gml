/// @description Thwimp logic

//Default event
event_inherited()

//Stop moving after landing
if gravity = 0
{
    if hspeed != 0
    {
        hspeed = 0
        audio_play_sound(snd_bump,0,0)
    }
}

//Extra gravity
else
    gravity = 0.35

