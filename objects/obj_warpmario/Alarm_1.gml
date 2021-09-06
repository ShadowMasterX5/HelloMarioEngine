/// @description Launch Mario out of a pipe cannon

//Explosion sound
audio_play_sound(snd_explode,0,0)

//Launch upwards
vspeed = -4

//Make visible
visible = 1

//Choose the appropriate sprite
sprite_index = scr_mariowarp()

//Do not animate
image_speed = 0

//Choose the appropriate image index
image_index = 0

