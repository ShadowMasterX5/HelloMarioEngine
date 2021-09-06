/// @description Start walking to the goal castle

//Physics state
ready = 2

//Play the flagpole music
audio_play_sound(snd_flagsong,1,0)

//Mario shouts in excitement
audio_play_sound(snd_yahoo,0,0)

//Face right
image_xscale = 1

//Jump rightwards
hspeed = 1
vspeed = -3

//Animate
image_speed = 0.15

