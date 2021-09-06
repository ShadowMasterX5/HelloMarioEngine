/// @description Fire projectiles
instance_create(x,y,obj_reznor_fire)
audio_play_sound(snd_podoboo,0,0)
image_index = 2
alarm[0] = 60+random(40)
alarm[1] = 8

