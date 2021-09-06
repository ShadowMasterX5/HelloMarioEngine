/// @description Special floor/ceiling collisions

//When moving up
if vspeed < 0
{

    //Check for a solid above
    var solidbottom = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top+vspeed,obj_solid,1,0)

    //Handle solidbottom collisions
    if solidbottom
    and y > solidbottom.bbox_bottom-5
    {
        y = solidbottom.bbox_bottom+1
        hspeed = 0
        vspeed = 0
        gravity = 0
        sprite_index = spr_swooper

        //Swoop down again
        alarm[0] = 120

    }

    //Cap fall speed
    if vspeed < -2
        vspeed = -2

}

//If a solid is above
if gravity = 0
and collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_solid,0,0)
{
    if instance_exists(obj_mario)
    {
        if obj_mario.x > x
            direct = 1
        else
            direct = -1
    }
}
else
    gravity = 0.1

//Bounce off floors
if collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_solidtop,0,0)
or collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_slopeparent,1,0)
    vspeed = -0.5

