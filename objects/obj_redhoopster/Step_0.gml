/// @description Climb up and down and up and down

//Climb down if there is no climbable surface above
if vspeed < 0
and not collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top-1,obj_climb,0,0)
{
    vspeed = 1.5
    direct = -1
}

//Climb up if there is no climbable surface below
else if vspeed > 0
and not collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_climb,0,0)
{
    vspeed = -0.75
    direct = 1
}

//Climb down if Mario is riding, and has a solid above him
else if vspeed < 0
and collision_rectangle(bbox_left,bbox_top-4,bbox_right,bbox_top,obj_mario,0,0)
and collision_rectangle(obj_mario.bbox_left,obj_mario.bbox_top-1,obj_mario.bbox_right,obj_mario.bbox_top,obj_solid,0,0)
{
    vspeed = 1.5
    direct = -1
}

