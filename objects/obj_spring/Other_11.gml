/// @description Bounce Mario off the spring

//Animate
image_speed = 0.5

//Play spring sound
audio_play_sound(snd_spring,0,0)

//Bounce Mario
with obj_mario
{
    event_user(1)
    vspeed = -5.2
}

