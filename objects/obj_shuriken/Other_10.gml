/// @description Destroy shuriken
audio_play_sound(snd_bump,0,0)
with instance_create(x-4,y-4,obj_smoke) sprite_index = spr_skidsmoke
instance_destroy()

