/// @description Open up this path!

//Play a magical sound
audio_play_sound(snd_magic,0,0)

//Make some smoke
instance_create(x,y,obj_smoke)

//Save the fact that this path is open
ds_map_add(global.worldmap,string(id),1)

//Destroy
instance_destroy()

