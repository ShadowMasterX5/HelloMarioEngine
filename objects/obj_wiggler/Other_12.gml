/// @description Special turn at enemies script
if (hspeed > 0
and collision_rectangle(bbox_right,bbox_top,bbox_right+hspeed*2,bbox_bottom,obj_enemyparent,0,1)
and not collision_rectangle(bbox_right,bbox_top,bbox_right+hspeed*2,bbox_bottom,obj_wiggler_body,0,1))
or (hspeed < 0
and collision_rectangle(bbox_left+hspeed*2,bbox_top,bbox_left,bbox_bottom,obj_enemyparent,0,1)
and not collision_rectangle(bbox_left+hspeed*2,bbox_top,bbox_left,bbox_bottom,obj_wiggler_body,0,1))
    hspeed = -hspeed

