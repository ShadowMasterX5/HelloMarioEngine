/// @description Time is up

//Make smoke and noise inside view
if not outside_view()
{
    audio_play_sound(snd_bump,0,0)
    instance_create(x+8,y,obj_smoke)
}

//Destroy
instance_destroy()

