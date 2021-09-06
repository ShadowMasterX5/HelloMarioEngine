/// @description Stay on ledges

//Default event
event_inherited()

//Custom turn at ledges script
if (hspeed > 0 and not collision_rectangle(bbox_right+6,bbox_bottom-1,bbox_right+6,bbox_bottom+15,obj_solidtop,0,0))
or (hspeed < 0 and not collision_rectangle(bbox_left-6,bbox_bottom-1,bbox_left-6,bbox_bottom+15,obj_solidtop,0,0))
    hspeed = -hspeed

