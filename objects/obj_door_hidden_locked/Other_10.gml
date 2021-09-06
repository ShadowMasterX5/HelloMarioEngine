/// @description Make a visible hidden door
with instance_create(x,y,obj_door_hidden) visible = 1

//Play an unlocking sound
audio_play_sound(snd_chest,0,0)

//Make smoke
instance_create(x,y,obj_smoke)

//Destroy
instance_destroy()

