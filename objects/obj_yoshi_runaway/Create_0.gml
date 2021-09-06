/// @description A runaway Yoshi

//Animate
image_speed = 0.3

//Facing direction + move Mario up
if instance_exists(obj_mario)
{
    direct = obj_mario.direct
    obj_mario.vspeed = -4
}
else
    direct = 1

//Run away
hspeed = direct*2

//Reset Yoshi
global.yoshi = 0

//Lose Yoshi sound
audio_play_sound(snd_loseyoshi,0,0)

//Yoshi is hurt
audio_play_sound(snd_yoshi_hurt,0,0)

//Use appropriate sprite
if global.ycolor = 1
    sprite_index = spr_yoshi_hold_r
else if global.ycolor = 2
    sprite_index = spr_yoshi_hold_y
else if global.ycolor = 3
    sprite_index = spr_yoshi_hold_b

//State variable
ready = 0

//Make Yoshi ridable again
alarm[0] = 80

//Alpha blink
alarm[1] = 1

