/// @description Throw hammers
with instance_create(x,y,obj_brohammer) hspeed = 1.5*other.direct

//Play throw sound
audio_play_sound(snd_hammer,0,0)

//Change sprite back
sprite_index = spr_sledgebro

//Throw more
alarm[2] = 75

