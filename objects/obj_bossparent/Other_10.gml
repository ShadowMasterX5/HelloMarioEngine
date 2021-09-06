/// @description Default boss hurt script

//Decrement hits
hitpoints--

//Play hurt sound
audio_play_sound(snd_hurt,0,0)

//If there are hits left
if hitpoints > 0
{

    //Execute boss hurt script
    event_user(7)

}

//If there is no health left
else
{

    //Execute boss death script
    event_user(8)

    //End boss battle
    event_user(6)

    //Destroy
    instance_destroy()

}

