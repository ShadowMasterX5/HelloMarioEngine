/// @description The game's logic

//If the game is still active
if ready < 4
{

    //Play the correct sound
    audio_play_sound(snd_correct,0,0)

    //Advance the game
    ready++

    //If you are at the last frame
    if ready = 3
    {

        //If all the frames are equal
        if roulette[0] = roulette[1]
        and roulette[0] = roulette[2]
        {

            //Get an extra life
            audio_play_sound(snd_1up,0,0)
            audio_play_sound(snd_lucky,0,0)
            lives++

        }

        //Otherwise, play the wrong sound
        else
            audio_play_sound(snd_wrong,0,0)

        //Leave the game after a second
        alarm[1] = 60

    }

}

