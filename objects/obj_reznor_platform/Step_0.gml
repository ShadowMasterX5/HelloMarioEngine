/// @description Reznor platform logic

//Let Mario bump the platform
if offset = 0
and collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_mario,0,0)
and obj_mario.state = 2
    alarm[0] = 1

//Circular motion
direction -= 0.89625

