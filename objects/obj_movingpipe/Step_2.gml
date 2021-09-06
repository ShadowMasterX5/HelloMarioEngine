/// @description Moving pipe logic

//Move based on arrow markers
if type = 0
{
    if collision_rectangle(bbox_left,bbox_top,bbox_right,y+15,obj_up,0,0)
        vspeed+=-0.0324
    if collision_rectangle(bbox_left,bbox_top,bbox_right,y+15,obj_down,0,0)
        vspeed+=0.0324
    if collision_rectangle(bbox_left,bbox_top,bbox_right,y+15,obj_left,0,0)
        hspeed+=-0.0324
    if collision_rectangle(bbox_left,bbox_top,bbox_right,y+15,obj_right,0,0)
        hspeed+=0.0324
}

//Circular movenent
else if type = 1
    direction += -0.89625
else if type = 2
    direction += 0.89625

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

