/// @description P-Meter loop

//If Mario exists
if instance_exists(obj_mario)
{

    //If Mario is running fast enough
    if abs(obj_mario.hspeed) > 2.8
    and obj_mario.state = 1
    {

        //Increment the P-Meter if it is not maxed out
        if pmeter < 6
            pmeter++

    }

    //If Mario is too slow, or not running, and the P-Meter is not too low, decrement slowly
    else if pmeter > 0
    and slowdown = 2
        pmeter--

    //Slow down decrements
    slowdown++

    //Restart decrement timer
    if slowdown = 3
        slowdown = 0

}

//Otherwise, decrement the P-Meter
else if pmeter > 0
    pmeter--

//If the P-Meter is maxed out
if pmeter = 6
{

    //Play that annoying sound
    audio_play_sound(snd_pmeter,1,1)

    //Limit the P-Meter flight time
    alarm[8] = 300

    //Make the P-Meter flash
    alarm[9] = 7

}

//Otherwise, continue the loop
else
    alarm[7] = 15

