/// @description Looks kinda like a radioactive waffle

/*
**  This item uses creation code!
**
**  ready = Select a starting direction
**      1: Clockwise
**      -1: Counterclockwise
**
*/

//Default Value:
if place_snapped(32,16)
    ready = 1
else
    ready = -1

//How vulnerable is this enemy to various items?
hardness = 99

//How vulnerable is this enemy to Mario?
stomp = 2

//Animate
image_speed = 0.3

//Move to the uppermost position of its rotation
y -= 80

//Make a trail
alarm[0] = 6

/* */
/*  */
