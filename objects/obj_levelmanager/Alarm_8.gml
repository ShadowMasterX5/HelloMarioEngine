/// @description End the P-Meter flight time
if pmeter > 5
{

    //If Mario is still running, keep the meter on
    if instance_exists(obj_mario)
    and abs(obj_mario.hspeed) > 2.8
    and obj_mario.state < 2
        alarm[8] = 100

    //Otherwise
    else
    {

        //Stop the annoying sound
        audio_stop_sound(snd_pmeter)

        //Make the P-Meter not maxed out
        pmeter = 5

        //Continue the P-Meter loop
        alarm[7] = 15

    }

}

