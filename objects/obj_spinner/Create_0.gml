/// @description A tail spin

//Play the spin sound
audio_play_sound(snd_spin,0,0)

//Animate
image_speed = 0.3

//Use the tanooki spin sprite if Mario is in a tanooki suit
if global.powerup = cs_tanooki
    sprite_index = spr_mario_tanooki_spin

//Make Mario invisible
obj_mario.visible = 0

//Bump blocks that are lower
bumper =  instance_create(x-8,y+16,obj_blockbumper)
bumper.alarm[0] = 0

