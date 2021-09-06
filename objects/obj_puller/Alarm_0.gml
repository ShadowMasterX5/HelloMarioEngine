/// @description Finish lifting an item
if instance_exists(obj_mario)
{

    //Play pick up sound
    audio_play_sound(snd_pickup,0,0)

    //With the pulled item
    with pulled
    {

        //Scream Yah! if it was heavy
        if isheavy = 1
            audio_play_sound(snd_yah,0,0)

        //Pull something out
        event_user(7)

    }

    //Destroy
    instance_destroy()

}

