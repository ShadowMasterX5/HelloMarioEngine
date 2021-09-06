/// @description Checks if a pair is a match

//If the pair is a match
if obj_cardmanager.oncard = mycard
{

    //If this card is a 1up card
    if mycard = 5
    {

        //Play the sound of lives
        audio_play_sound(snd_1up,0,0)
        audio_play_sound(snd_lucky,0,0)

        //Get an extra life
        lives++

    }

    //Otherwise, just play the correct sound
    else
        audio_play_sound(snd_correct,0,0)

    //Let the game progress
    obj_cardmanager.alarm[0] = 10

    //Increment the total number of cards flipped
    obj_cardmanager.count += 2

}

//If the pair is not a match
else
{

    //Play the wrong sound
    audio_play_sound(snd_wrong,0,0)

    //Increment the number of wrong choices
    obj_cardmanager.wrong++

    //Flip this card
    alarm[1] = 7

    //Flip the other card in the pair
    with obj_cardmanager.lastcard alarm[1] = 7

    //Let the game progress
    obj_cardmanager.alarm[0] = 50

}

