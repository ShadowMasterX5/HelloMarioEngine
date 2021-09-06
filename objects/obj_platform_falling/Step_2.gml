/// @description Falling platform logic

//Start falling when Mario steps on it
if ready = 0
and collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_mario,0,0)
and obj_mario.y < y-27
{
    ready = 1
    alarm[0] = 15
}

//Cap fall speed
if vspeed > 1.5
    vspeed = 1.5

//Reappear after falling out of the room
if ready = 1
and bbox_top > room_height
{
    ready = 2
    alarm[1] = 10
    gravity = 0
}

//If Mario is on this falling platform, snap Mario vertically
if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
and not collision_rectangle(obj_mario.bbox_left,bbox_top-5,obj_mario.bbox_right,bbox_top+1,obj_solidtop,0,1)
and obj_mario.y < y-26
and obj_mario.state < 2
    obj_mario.y = ceil(bbox_top-32)

