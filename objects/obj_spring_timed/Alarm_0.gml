/// @description Time is up

//Play bump sound inside view
if not outside_view()
    audio_play_sound(snd_bump,0,0)

//Destroy
instance_destroy()

