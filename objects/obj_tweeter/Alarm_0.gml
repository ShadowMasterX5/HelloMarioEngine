/// @description Hop

//Move up
y--

//Hop higher if he hopped more than twice
if hopcount > 2
{
    vspeed = -5
    hopcount = 0
}

//Otherwise, hop low
else
{
    vspeed = -3
    hopcount++
}

//Hop again
alarm[0] = 100

