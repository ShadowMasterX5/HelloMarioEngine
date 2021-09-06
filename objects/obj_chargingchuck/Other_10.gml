/// @description Chuck hurting

//Play hurt sound
audio_play_sound(snd_hurt,0,0)

//Decrement health
hitpoints--

//Use hurt sprite
sprite_index = spr_chargingchuck_hurt

//If he has health left
if hitpoints > 0
{

    //Change state
    ready = 1

    //Become hard
    hardness = 99

    //Pause afterwards
    alarm[0] = 60

    //Stop moving
    hspeed = 0

    //Animate
    image_speed = 0.15

}

//Otherwise, die
else
    event_inherited()

