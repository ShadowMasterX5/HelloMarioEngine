/// @description Turn at ledge script
if gravity = 0
and not collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+5,obj_slopeparent,1,0)
{
    if (hspeed > 0 and not collision_rectangle(bbox_right-6,bbox_bottom-1,bbox_right-6,bbox_bottom+15,obj_solidtop,0,0))
    or (hspeed < 0 and not collision_rectangle(bbox_left+6,bbox_bottom-1,bbox_left+6,bbox_bottom+15,obj_solidtop,0,0))
        hspeed = -hspeed
}

