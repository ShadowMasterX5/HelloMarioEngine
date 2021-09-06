/// @description Press the switch

//If Mario jumps on the unpressed switch
if other.y < y-24
and other.vspeed > 0
and instance_exists(mysolid)
{

    //Play a thwomp sound
    audio_play_sound(snd_thwomp,0,0)

    //Animate the switch press
    image_speed = 1

    //Destroy the solid
    with mysolid instance_destroy()

    //End the switch press
    alarm[0] = 3

}

