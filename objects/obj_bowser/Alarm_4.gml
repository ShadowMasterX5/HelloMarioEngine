/// @description Check if bricks were smashed

//If there is still a floor below, then finish falling
if collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
{
    alarm[5] = 20
    ready = 5
}

//Otherwise, continue falling
else
{
    vspeed = 3
    ready = 4
}

