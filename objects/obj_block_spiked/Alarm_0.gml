/// @description Make the block turn
image_index++

//Turn faster if the block is sideways
if image_index = 1
or image_index = 3
    alarm[0] = 16
else
    alarm[0] = 100

//If Mario is standing on the block, throw him off
if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top,obj_mario,0,0)
{
    with obj_mario
    {
        if state < 2
        {
            hspeed = 1.5
            vspeed = -4
        }
    }
}

