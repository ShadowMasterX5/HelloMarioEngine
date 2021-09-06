/// @description Decrement the time variable

//If there is time left
if global.timer > 0
{

    //Decrement
    global.timer--

    //Decrement the time again after a second
    alarm[2] = 60

    //Play the hurry up sound at 100 seconds left
    if global.timer = 101
        alarm[3] = 60

    //Kill Mario at 0 seconds
    else if global.timer = 1
        alarm[4] = 61

}

