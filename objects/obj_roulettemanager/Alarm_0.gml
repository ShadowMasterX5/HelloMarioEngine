/// @description Animate the game

//Slot #1
if ready < 1
    roulette[0] = roulette[1]

//Slot #2
if ready < 2
    roulette[1] = roulette[2]

//Slot #3
if ready < 3
{

    //Increment the third slot
    roulette[2] = (roulette[2]+1)%4

    //Play the move sound
    audio_play_sound(snd_move,0,0)

    //Continue animation
    alarm[0] = 10

}

