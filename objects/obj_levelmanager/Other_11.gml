/// @description Turns on the P-Switch

//If the P-Switch is off
if switchon = 0
{

    //Turn on the P-Switch
    switchon = 1

    //Swap coins with bricks and bricks with coins
    event_user(2)

    //Make P-Coins visible
    with obj_pcoin visible = 1

    //Create hidden springs
    with obj_spring_hidden instance_create(x,y,obj_spring_blue)

    //Make hidden doors visible
    with obj_door_hidden visible = 1
    with obj_door_hidden_locked visible = 1

    //Turn on P-Platforms
    with obj_pplatform event_user(0)

    //Turn off conveyor belts
    with obj_conveyor_left image_speed = 0
    with obj_conveyor_right image_speed = 0

    //Start the switch song if it is not playing, and stop the regular music
    if not audio_is_playing(snd_switchsong)
    {
        audio_play_sound(snd_switchsong,99,1)
        alarm[1] = 1
    }

    //Prevent the starman music from overlapping
    audio_stop_sound(snd_starman)

}

