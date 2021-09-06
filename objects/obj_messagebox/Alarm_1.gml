/// @description Makes sounds play as the message is being displayed

//If the message is being displayed
if showing = 1
{

    //If all of the characters have not been displayed yet
    if a <= string_length(text)
    {

        //Play the sound
        audio_stop_sound(snd_kick3)
        audio_play_sound(snd_kick3,0,0)

        //Play the sound again later
        alarm[1] = 7

    }

}

