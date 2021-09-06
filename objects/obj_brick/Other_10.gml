/// @description Bump normally if Mario is small
if global.powerup = cs_small
and collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_mario,0,0)
and obj_mario.state = 2
{
    alarm[0] = 0
    alarm[2] = 4
}

