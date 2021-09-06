/// @description Get ready to throw hammers

//If he is on the ground, prepare to throw
if gravity = 0
{
    sprite_index = spr_sledgebro_throw
    alarm[3] = 25
}

//Otherwise, wait
else
    alarm[2] = 1

