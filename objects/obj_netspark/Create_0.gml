/// @description These sparks can climb

/*
**  This item uses creation code!
**
**  ready = Select a starting direction
**      0: Down
**      1: Right
**      2: Up
**      3: Left
**
*/

//Default Value:
if place_snapped(32,32)
    ready = 0
else if place_snapped(32,16)
    ready = 1
else if place_snapped(16,32)
    ready = 2
else
    ready = 3

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 2

//Animate
image_speed = 0.15

//Whether the koopa is changing net sides
turnaround = 0

/* */
/*  */
