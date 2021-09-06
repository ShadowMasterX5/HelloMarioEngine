/// @description Coins coming out of blocks

//Increment coins
global.coins++

//Animate
image_speed = 0.15

//Go up
vspeed = -4

//Gravity
gravity = 0.125

//Play a coin sound
audio_play_sound(snd_coin,0,0)

