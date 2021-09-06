/// @description Launch torpedo

//Open glove
image_index = 1

//Make the torpedo launch
with mytorpedo
{
    hspeed = direct
    image_speed = 0.15
    alarm[0] = 4
}

//Retract glove
alarm[3] = 10

