/// @description Time countdown
time--

//Keep ticking if there is time
if time > 0
    alarm[0] = 60

//Otherwise, fall
else
{
    gravity = 0.125
    friction = 0.025
}

