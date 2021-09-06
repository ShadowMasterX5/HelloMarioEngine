/// @description If Mario bumps the block when it is rightside up
if collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_mario,0,0)
and obj_mario.state = 2
and image_index = 0
{

    //Create a new block, give it the same item, and bump it
    with instance_create(x,y,obj_block)
    {
        ready = 1
        vspeed = -2
        alarm[0] = 4
        sprout = other.sprout
        event_user(0)
    }

    //Destroy
    instance_destroy()

}

//Hurt Mario if he is touching the side with the spikes
if (image_index = 0 and collision_rectangle(bbox_left+1,bbox_top-1,bbox_right-1,bbox_top-1,obj_mario,0,0) and global.yoshi != 2)
or (image_index = 1 and collision_rectangle(bbox_right+1,bbox_top+1,bbox_right+1,bbox_bottom-1,obj_mario,0,0))
or (image_index = 2 and collision_rectangle(bbox_left+1,bbox_bottom+1,bbox_right-1,bbox_bottom+1,obj_mario,0,0))
or (image_index = 3 and collision_rectangle(bbox_left-1,bbox_top+1,bbox_left-1,bbox_bottom-1,obj_mario,0,0))
    with obj_mario event_user(0)

