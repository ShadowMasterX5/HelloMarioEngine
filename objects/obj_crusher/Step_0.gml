/// @description Crusher logic

///Slam into the specified y value
if ready = 1
and y > ystart-4
{
    vspeed = 0
    y = ystart
    audio_play_sound(snd_thwomp,0,0)
    ready = 2
    alarm[3] = 60
}

//Stop after returning to the top, and restart sequence
else if ready = 2
and y < ystart-191
{
    ready = 0
    alarm[0] = 100
    vspeed = 0
    y = ystart-192
}

