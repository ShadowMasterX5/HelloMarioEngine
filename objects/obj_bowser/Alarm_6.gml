/// @description Prepare to breathe fire

//If Bowser is ready, can jump, and is not turning
if ready = 0
{

    //Fire breathing state
    ready = -3

    //Change pose
    image_index = 2

    //Continue fire breathing animation
    alarm[7] = 7

}

//Otherwise, wait
else
    alarm[6] = 5

