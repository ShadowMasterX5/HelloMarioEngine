/// @description Throw brick
hspeed = 3*obj_mario.direct

//Slope fix
while collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_slopeparent,1,0)
    y--

