/// @description Unpause the game

//Activate everything
instance_activate_all()

//Delete the screenshot
if background_exists(back)
    background_delete(back)

//Play the pause sound
audio_play_sound(snd_pause,0,0)

//Destroy
instance_destroy()

