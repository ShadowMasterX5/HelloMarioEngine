/// @description Default wall collisions
if (hspeed > 0 and collision_rectangle(bbox_right,bbox_top+1,bbox_right+1,bbox_bottom-4,obj_solid,0,0))
or (hspeed < 0 and collision_rectangle(bbox_left-1,bbox_top+1,bbox_left,bbox_bottom-4,obj_solid,0,0))
{
    hspeed = -hspeed
    while collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-4,obj_solid,1,0)
        x--
    while collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-4,obj_solid,1,0)
        x++
}

