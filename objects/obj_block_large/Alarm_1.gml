/// @description Finish block bump
vspeed = 0
y = ystart

//Make an item come out, if there is one
if sprout != cs_coin
{

    //Only create one item instead of three, except for these
    if sprout != cs_big
    and sprout != cs_1up
    and sprout != cs_poison
    and sprout != cs_star
        ready = 3

    //Make bouncy item(s)
    alarm[2] = 1

}

//Make the block look empty
image_index = 1

