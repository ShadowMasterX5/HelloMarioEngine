/// @description Amazing flying hammer bro logic

//If the platform gets offset, die
if myride.offset != 0
{
    event_user(0)
    audio_play_sound(snd_kick,0,0)
    instance_destroy()
}

//Otherwise, snap to position
else
{
    x = myride.x+16
    y = myride.y-32
}

