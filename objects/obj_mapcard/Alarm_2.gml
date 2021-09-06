/// @description Destroy this panel

//Make a magical sound
audio_play_sound(snd_magic,0,0)

//Make smoke
instance_create(x,y,obj_smoke)

//Destroy
instance_destroy()

