/// @description Turn at enemies script
var overlap = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-4,obj_enemyparent,0,1)
if overlap
{

    //Go right if you are further to the right, or in the same spot and a higher id
    if (bbox_left+bbox_right)*0.5 > (overlap.bbox_left+overlap.bbox_right)*0.5
    or ((bbox_left+bbox_right)*0.5 = (overlap.bbox_left+overlap.bbox_right)*0.5 and id > overlap.id)
        hspeed = abs(hspeed)

    //Otherwise, go left
    else
        hspeed = -abs(hspeed)

}

