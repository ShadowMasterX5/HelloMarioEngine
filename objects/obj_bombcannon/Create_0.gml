/// @description A bomb launcher

/*
**  This item uses creation code!
**
**  image_index = Select a starting direction
**      0: Left
**      1: Right
**
*/

//Default Value:
if place_snapped(32,16)
    image_index = 0
else
    image_index = 1

//Do not animate
image_speed = 0

//Launch
alarm[0] = 80

/* */
/*  */
