/// @description Use the holding sprite if appropriate

//Carrying overhead
if holding = 1
{
    sprite_index = scr_mariocarry()
    image_index = 2
}

//Holding on front
else if holding = 2
{
    sprite_index = scr_mariohold()
    image_index = 2
}

