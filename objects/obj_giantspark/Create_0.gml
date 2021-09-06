/// @description Extra large spark

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 2

//Start moving
alarm[10] = 2

//Animate
image_speed = 0.15

//Extra large
image_xscale = 2
image_yscale = 2

//State variable
ready = 0

//Move against surfaces
if place_meeting(x+8,y,obj_solid)
    x+=4
else if place_meeting(x-8,y,obj_solid)
    x-=4
if place_meeting(x,y+8,obj_solid)
    y+=4
else if place_meeting(x,y-8,obj_solid)
    y-=4

