/// @description Special floor/ceiling collisions

//Bounce off floors
if vspeed > 0
{
    if collision_rectangle(bbox_left+2,bbox_bottom,bbox_right-2,bbox_bottom+1,obj_solidtop,0,0)
    or collision_rectangle(bbox_left+2,bbox_bottom,bbox_right-2,bbox_bottom+1,obj_slopeparent,0,0)
        vspeed = -0.5
}

//Bounce off ceilings
else if vspeed < 0
and collision_rectangle(bbox_left+2,bbox_top-1,bbox_right-2,bbox_top,obj_solid,0,0)
    vspeed = 0.5

//Cap fall speed
if vspeed > 1
    vspeed = 1

//Lunge at Mario when below him
if ready = 0
and instance_exists(obj_mario)
and y > obj_mario.y
{

    //Can't lunge again
    ready = 1

    //Disable gravity
    gravity = 0

    //Disable friction
    friction = 0

    //Go after Mario
    if obj_mario.x < x+8
        hspeed = -1
    else
        hspeed = 1

    //Move up
    vspeed = -2

    //Finish lunge
    alarm[0] = 20

}

