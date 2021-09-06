/// @description Moving block train logic

//If Mario is on this moving platform, snap Mario vertically
if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
and obj_mario.y < y-26
and obj_mario.state < 2
    obj_mario.y = ceil(bbox_top-32)

//Moving solids should push Mario
if (hspeed > 0 and collision_rectangle(bbox_right,bbox_top+1,bbox_right+hspeed,bbox_bottom,obj_mario,0,0))
or (hspeed < 0 and collision_rectangle(bbox_left+hspeed,bbox_top+1,bbox_left,bbox_bottom,obj_mario,0,0))
    obj_mario.x += hspeed

