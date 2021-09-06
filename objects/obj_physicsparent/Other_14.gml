/// @description Default floor/ceiling collisions

//When moving down
if vspeed > 0
{

    //Check for a solidtop below
    var solidtop = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_solidtop,0,0)

    //Handle solidtop collisions
    if solidtop
    and bbox_bottom < solidtop.yprevious+5
        y = solidtop.y+floor(y-bbox_bottom-0.9)

    //Cap fall speed
    if vspeed > 4
        vspeed = 4

}

//Embed into the slope to ensure correct slope mechanics
if collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+4,obj_slopeparent,1,0)
and not collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom-4,obj_slopeparent,1,0)
and vspeed = 0
    y+=4

///Handle slope collisions
if collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom,obj_slopeparent,1,0)
and not collision_rectangle(bbox_left,bbox_bottom-8,bbox_right,bbox_bottom-8,obj_slopeparent,1,0)
{
    while collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom,obj_slopeparent,1,0)
        y--
}

//Check for floor objects
if (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
and not collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom-4,obj_solidtop,0,0))
or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_slopeparent,1,0)
{
    gravity = 0
    if vspeed > 0
        vspeed = 0
}
else
    gravity = 0.25

//Ceiling check
if vspeed < 0
and collision_rectangle(bbox_left+1,bbox_top+vspeed-1,bbox_right-1,bbox_top-1,obj_solid,1,0)
{
    while collision_rectangle(bbox_left+1,bbox_top,bbox_right-1,bbox_top,obj_solid,1,0)
        y++
    vspeed = 0
}

//Destroy when it falls out of the level
if bbox_top > room_height
    instance_destroy()

