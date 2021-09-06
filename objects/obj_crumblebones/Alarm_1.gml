/// @description Shake

//If it needs to shake more
if shake < 16
{
    x++
    shake++
    alarm[2] = 2
}

//Finish shaking
else
{
    alarm[3] = 8
    image_index = 0
}

