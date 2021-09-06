/// @description Loop the music
if not audio_is_playing(levelmusic)
and musicdisabled = 0
and switchon = 0
{

    //Loop the music at a higher speed if time is running out
    if global.timer > 0 and global.timer < 101
        audio_sound_pitch(audio_play_sound(levelmusic,99,1),1.5)

    //Otherwise, loop it normally
    else
        audio_play_sound(levelmusic,99,1)

}

