/// @description A coin chain

//Go up
vspeed = -1

//Animate
image_speed = 0.15

//Next direction to go
nextdir = 90

//Play the sprout sound
audio_play_sound(snd_sprout,0,0)

//Start making coins/bricks after 16 pixels
alarm[0] = 16

//Change depth after coming out of the block
alarm[1] = 16

//Stop the coin chain if it goes on for too long
alarm[2] = 513

