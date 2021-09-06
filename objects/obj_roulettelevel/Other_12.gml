/// @description Beats the level

//Make a magical sound
audio_play_sound(snd_magic,0,0)

//Make smoke
instance_create(x,y,obj_smoke)

//Clear the name
obj_mapmario.mytext = ""

//Make it go away forever
ds_map_add(global.worldmap,string(id),1)

//Destroy
instance_destroy()

