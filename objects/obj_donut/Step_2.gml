/// @description Donut logic

//If not falling
if vspeed = 0
{

    //If Mario is above, shake
    if collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_mario,0,0)
        shake = 1

    //Otherwise, wait to shake
    else if sprite_index = spr_donut or shake = 0
    {
        shake = 0
        alarm[0] = 30
    }

}

//Otherwise
else
{

    //If Mario is on this falling platform
    if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
    and obj_mario.y < y-26
    and obj_mario.state < 2
    {

        //Check if falling through a solidtop
        var check = collision_rectangle(obj_mario.bbox_left,bbox_top-5,obj_mario.bbox_right,bbox_top+1,obj_solidtop,0,1)

        //If not falling through, or falling through a lower donut, snap Mario vertically
        if not check
        or ((check.object_index = obj_donut or check.object_index = obj_donut_red) and (check.y > y or (check.y = y and check > id)))
            obj_mario.y = ceil(bbox_top-32)

    }

    //Do not shake
    shake = 0

}

