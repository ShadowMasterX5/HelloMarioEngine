/// @description Move Mario if he is standing above while the belt is in motion
if image_speed = 0.5
and collision_rectangle(bbox_left,y-1,bbox_right,y,obj_mario,0,0)
and not collision_rectangle(obj_mario.bbox_left-1,obj_mario.bbox_top,obj_mario.bbox_left-1,obj_mario.bbox_bottom-1,obj_solid,0,0)
and not collision_point(obj_mario.bbox_left,obj_mario.bbox_bottom+1,obj_conveyor_left,0,1)
    obj_mario.x -= 0.5

