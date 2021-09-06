/// @description Touch-start moving platforms

//Choose a starting direction
if place_meeting(x,y,obj_up)
    type = 1
else if place_meeting(x,y,obj_down)
    type = 2
else if place_meeting(x,y,obj_left)
    type = 3
else
    type = 0

