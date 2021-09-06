/// @description A wall cannon

/*
**  This item uses creation code!
**
**  image_index = Select a starting direction
**      0: Up-Right + Down-Left
**      1: Up-Left + Down-Right
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
