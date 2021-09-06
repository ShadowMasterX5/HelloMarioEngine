/// @description Return to the world map after the music is done playing
if audio_is_playing(snd_flagsong)
    alarm[3] = 1
else
    scr_return()

