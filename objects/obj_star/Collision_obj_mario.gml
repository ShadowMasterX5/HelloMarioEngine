/// @description Make Mario invincible

//If Mario is already invincible
if instance_exists(obj_invincibility)
{

    //Extend the timer on his invincibility
    obj_invincibility.alarm[0] = 1000

    //Gotcha
    audio_play_sound(snd_gotcha,0,0)

}

//Otherwise
else
{

    //Create invincibility
    instance_create(x,y,obj_invincibility)

    //Start the star music
    if obj_levelmanager.switchon = 0
        audio_play_sound(snd_starman,99,1)

    //Let's go!
    audio_play_sound(snd_letsgo,0,0)

    //Stop the music
    with obj_levelmanager alarm[1] = 1

}

//Play a powerup sound
audio_play_sound(snd_powerup,0,0)

//Destroy
instance_destroy()

