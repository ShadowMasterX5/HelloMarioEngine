/// @description End the invincibility

//Stop the star music
audio_stop_sound(snd_starman)

//Start the regular music
obj_levelmanager.alarm[0] = 1

//Give Mario temporary invincibility + disable flashing effects
with obj_mario
{
    isflashing = 0
    invincible = 1
    event_user(6)
}

//Disable flashing effects
with obj_warpmario isflashing = 0

//Destroy
instance_destroy()

