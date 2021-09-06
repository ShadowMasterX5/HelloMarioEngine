/// @description Remember the star for the next room
if alarm[0] > 5
    global.star = alarm[0]

//Stop the star if there is not enough time left
else
    audio_stop_sound(snd_starman)

