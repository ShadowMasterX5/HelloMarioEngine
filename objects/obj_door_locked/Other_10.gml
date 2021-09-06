/// @description Make a door
instance_create(x,y,obj_door)

//Play an unlocking sound
audio_play_sound(snd_chest,0,0)

//Make smoke
instance_create(x,y,obj_smoke)

//Destroy
instance_destroy()

