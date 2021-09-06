/// @description Ridable flying beetles

//Animate
image_speed = 0.15

//Move
speed = 0.5

//Choose a starting direction
if place_meeting(x,y,obj_up)
    direction = 90
else if place_meeting(x,y,obj_down)
    direction = 270
else if place_meeting(x,y,obj_right)
    direction = 0
else
    direction = 180

