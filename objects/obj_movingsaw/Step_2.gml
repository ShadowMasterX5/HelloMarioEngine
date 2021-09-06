/// @description Moving saw logic

//Circular motion
if type = 1
    direction += -0.89625
if type = 2
    direction += 0.89625

//Hurt Mario when he touches the saw
if collision_rectangle(bbox_left,y-28,bbox_right,y-1,obj_mario,0,0)
    with obj_mario event_user(0)

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

//Moving solids should push Mario
if (hspeed > 0 and collision_rectangle(bbox_right,bbox_top+1,bbox_right+hspeed,bbox_bottom,obj_mario,0,0))
or (hspeed < 0 and collision_rectangle(bbox_left+hspeed,bbox_top+1,bbox_left,bbox_bottom,obj_mario,0,0))
    obj_mario.x += hspeed

