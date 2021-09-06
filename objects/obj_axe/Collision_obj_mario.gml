/// @description Destroy bridge

//Play thwomp sound
audio_play_sound(snd_thwomp,0,0)

//Make smoke
instance_create(x,y,obj_smoke)

//Start bridge destruction
with instance_nearest(x,y,obj_bridge) alarm[0] = 7

//Stop the music and time
with obj_levelmanager
{
    event_user(3)
    alarm[2] = 0
}

//Activate end boss object
with obj_endboss alarm[0] = 128

//Destroy
instance_destroy()

