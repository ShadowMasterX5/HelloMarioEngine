/// @description Launch cannonballs and display to the world your power

/*
**  This item uses creation code!
**
**  image_index = Select a starting direction
**      0: Left (Floor)
**      1: Right (Floor)
**      2: Left (Ceiling)
**      3: Right (Ceiling)
**
*/

//Default Value:
if place_snapped(32,16)
    image_index = 0
else
    image_index = 1
if position_meeting(x+8,y-8,obj_solid)
    image_index += 2

//Do not animate
image_speed = 0

//Launch
alarm[0] = 80

/* */
/*  */
