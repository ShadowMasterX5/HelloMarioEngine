/// @description Finish block bump
vspeed = 0
y = ystart

//Play a message sound
audio_play_sound(snd_message,0,0)

//Make Mario say "Hoo hoo!"
audio_play_sound(snd_hoohoo,0,0)

//Make a message box with the message
with instance_create(0,0,obj_messagebox) varmsg = other.varmsg

//Delay making the block bumpable to prevent message box spam
alarm[2] = 24

