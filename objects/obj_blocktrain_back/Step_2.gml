/// @description Moving block train logic

//If Mario is on this moving platform, snap Mario vertically
if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
and obj_mario.y < y-26
and obj_mario.state < 2
    obj_mario.y = ceil(bbox_top-32)

