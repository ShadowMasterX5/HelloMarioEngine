/// @description Podoboo logic

//Cap fall speed
if vspeed > 3
    vspeed = 3

//Make the podoboo fall down at around the same height it started at
if y < ystart+16
and ready = 1
{
    ready = 0
    gravity = 0.4
}

