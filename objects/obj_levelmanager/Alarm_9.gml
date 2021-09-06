/// @description Make the P-Meter flash

//If Mario is no longer fast enough, and on the ground
if instance_exists(obj_mario)
and abs(obj_mario.hspeed) <= 2.8
and obj_mario.state < 2
{

    //Stop the annoying sound
    audio_stop_sound(snd_pmeter)

    //Make the P-Meter not maxed out
    pmeter = 5

    //Continue the P-Meter loop
    alarm[7] = 15

}

//Otherwise, if the P-Meter is still maxed out
else if pmeter > 5
{

    //Flash between frames 6 and 7
    if pmeter = 6
        pmeter = 7
    else
        pmeter = 6

    //Continue flashing
    alarm[9] = 7

}

