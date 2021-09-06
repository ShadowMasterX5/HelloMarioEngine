/// @description Moving platform logic

//Start moving when Mario steps on it
if ready = 0
and collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_mario,0,0)
and obj_mario.y < y-27
{
    ready = 1
    hspeed = 1
    alarm[0] = 60
}

//Cap fall speed
if vspeed > 1.5
    vspeed = 1.5

//If Mario is on this moving platform
if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
and obj_mario.y < y-26
and obj_mario.state < 2
{

    //Snap Mario vertically
    obj_mario.y = ceil(bbox_top-32)

    //Move Mario horizontally if there is no solid in his way
    if (hspeed > 0 and not collision_rectangle(obj_mario.bbox_right+hspeed,obj_mario.bbox_top,obj_mario.bbox_right+hspeed,obj_mario.bbox_bottom-1,obj_solid,0,0))
    or (hspeed < 0 and not collision_rectangle(obj_mario.bbox_left+hspeed,obj_mario.bbox_top,obj_mario.bbox_left+hspeed,obj_mario.bbox_bottom-1,obj_solid,0,0))
        obj_mario.x += hspeed

}

