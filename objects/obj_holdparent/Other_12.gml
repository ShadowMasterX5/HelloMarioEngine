/// @description Default thrown event
hspeed = obj_mario.hspeed+1.5*obj_mario.direct

//Move up when solids are not in the way
if not place_meeting(x,y,obj_solid)
    vspeed = -1
else
    vspeed = 0

//Slope fix
while collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_slopeparent,1,0)
    y--

