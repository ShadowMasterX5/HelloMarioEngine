/// @description Throw boomerangs
with instance_create(x,y,obj_boomerang) hspeed = 1.5*other.direct

//Play throw sound
audio_play_sound(snd_hammer,0,0)

//Change sprite back
sprite_index = spr_boomerangbro

//Throw more
alarm[2] = 100

