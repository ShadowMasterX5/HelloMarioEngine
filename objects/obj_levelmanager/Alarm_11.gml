/// @description Make the screen shake when thwomp sound plays
if audio_is_playing(snd_thwomp)
{
    if anim%2
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (4) )
    else
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (4) )
    alarm[11] = 7
}

