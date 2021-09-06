/// @description Create smoke

//Create smoke on the left for left slopes
if collision_rectangle(bbox_left-3,bbox_bottom,bbox_left,bbox_bottom+2,obj_slopeparent,1,0)
{
    with instance_create(x-8,y+24,obj_smoke)
    {
        sprite_index = spr_skidsmoke
        depth = -6
    }
}

//Create smoke on the right for right slopes
if collision_rectangle(bbox_right,bbox_bottom,bbox_right+3,bbox_bottom+2,obj_slopeparent,1,0)
{
    with instance_create(x+1,y+24,obj_smoke)
    {
        sprite_index = spr_skidsmoke
        depth = -6
    }
}

//Create more smoke
alarm[0] = 8

