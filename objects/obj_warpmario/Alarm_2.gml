/// @description Launch Mario out of a diagonal pipe cannon

//Explosion sound
audio_play_sound(snd_explode,0,0)

//Launch up and to the right
hspeed = 4
vspeed = -4

//Make visible
visible = 1

//Choose the appropriate sprite
if holding = 0
    sprite_index = scr_mariorunjump()
else
    sprite_index = scr_mariohold()

//Do not animate
image_speed = 0

//Choose the appropriate image index
image_index = 0

//Face right
direct = 1

//Enable gravity
alarm[3] = 30

