/// @description Bounce off surfaces
if (hspeed > 0 and collision_rectangle(bbox_right+hspeed,bbox_top,bbox_right+hspeed,bbox_bottom,obj_solid,0,0))
or (hspeed < 0 and collision_rectangle(bbox_left+hspeed,bbox_top,bbox_left+hspeed,bbox_bottom,obj_solid,0,0))
    hspeed = -hspeed
if (vspeed > 0 and collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_solidtop,0,0))
or (vspeed < 0 and collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_solid,0,0))
    vspeed = -vspeed
if vspeed > 0
and place_meeting(x+hspeed,y+vspeed,obj_slopeparent)
{
    hspeed = -hspeed
    vspeed = -vspeed
}

