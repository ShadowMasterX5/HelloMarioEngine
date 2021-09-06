/// @description Destroy bridge

//Play break sound
audio_play_sound(snd_break,0,0)

//Destroy the bridge to the left
with collision_point(x-8,y+8,obj_bridge,0,0) alarm[0] = 7

//Create smoke
instance_create(x,y,obj_smoke)

//Destroy
instance_destroy()

