/// @description Magical beanstalk

//Animate
image_speed = 0.15

//Move up
vspeed = -1

//Create a vine 16 pixels up
alarm[0] = 16

//Check if this is a warp beanstalk
if collision_point(x+8,y+8,obj_warproom,0,0)
    myroom = collision_point(x+8,y+8,obj_warproom,0,0).myroom
else
    myroom = noone

