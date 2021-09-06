/// @description Turns off the P-Switch

//If the P-Switch is on
if switchon = 1
{

    //Turn off the P-Switch
    switchon = 0

    //Swap coins with bricks and bricks with coins
    event_user(2)

    //Make P-Coins invisible
    with obj_pcoin visible = 0

    //Get rid of hidden springs
    with obj_spring_blue
    {
        instance_create(x,y,obj_smoke)
        instance_destroy()
    }

    //Make hidden doors invisible
    with obj_door_hidden visible = 0
    with obj_door_hidden_locked visible = 0

    //Turn off P-Platforms
    with obj_pplatform event_user(1)

    //Turn on conveyor belts
    with obj_conveyor_left image_speed = 0.5
    with obj_conveyor_right image_speed = 0.5

    //Stop the switch song
    audio_stop_sound(snd_switchsong)

    //Restart the starman music if it was stopped due to overlap
    if instance_exists(obj_invincibility)
    and musicdisabled = 0
        audio_play_sound(snd_starman,99,1)

    //Otherwise, restart the music
    else
        alarm[0] = 1

}

