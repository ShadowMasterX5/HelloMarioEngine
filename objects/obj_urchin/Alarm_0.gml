/// @description Move based on markers
if place_meeting(x,y,obj_up)
    vspeed = -0.5
else if place_meeting(x,y,obj_down)
    vspeed = 0.5
if place_meeting(x,y,obj_left)
    hspeed = -0.5
else if place_meeting(x,y,obj_right)
    hspeed = 0.5

