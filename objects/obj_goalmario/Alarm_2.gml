/// @description Take points off the time, and add to the score

//If there is no time left
if global.timer = 0
{

    //Play the count end sound
    audio_play_sound(snd_countend,0,0)

    //Return to the world map
    alarm[3] = 1

}

//Otherwise
else
{

    //If there is more than 4 seconds left
    if global.timer > 4
    {

        //Add 500 to the score
        score += 500

        //Subtract 5 seconds from the time
        global.timer -= 5

    }

    //Otherwise
    else
    {

        //Add 100 to the score
        score += 100

        //Decrement the time
        global.timer--

    }

    //Play the count sound
    audio_play_sound(snd_count,0,0)

    //Continue counting down
    alarm[2] = 4

}

