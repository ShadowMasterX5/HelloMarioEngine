/// @description A violent explosion!

//Play an explode sound if inside the view
if not outside_view()
    audio_play_sound(snd_explode,0,0)

//Last for half a second
alarm[0] = 30

//Animate
image_speed = 0.3

//Number of kills
hitpoint = 0

