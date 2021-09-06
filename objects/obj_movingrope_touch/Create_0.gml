/// @description Climb-start moving rope

/*
**  This item uses creation code!
**
**  ropelength = How long you want the rope to be
**
*/

//Default Value:
ropelength = 1

//Make rope
rope = instance_create(x,y+16,obj_movingrope_rope)

//Choose a starting direction
if place_meeting(x,y,obj_up)
    type = 1
else if place_meeting(x,y,obj_down)
    type = 2
else if place_meeting(x,y,obj_left)
    type = 3
else
    type = 0

/* */
/*  */
