/// @description Tanooki statue

//Play a magical sound
audio_play_sound(snd_magic,0,0)

//Make Mario invincible, invisible, disable his controls, and stop his speed
with obj_mario
{
    invincible = 1
    visible = 0
    disablecontrols = 1
    speed = 0
}

//Start blinking when time starts to run out
alarm[0] = 90

//Time runs out
alarm[2] = 120

//Become visible
alarm[3] = 8

//Create statue smoke
instance_create(x,y+8,obj_statuesmoke)

