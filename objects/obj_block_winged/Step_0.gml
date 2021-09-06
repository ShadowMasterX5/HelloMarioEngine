/// @description Check for Mario bonking his head on this block
if collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_mario,0,0)
and obj_mario.state = 2
{

    //Create a new block, give it the same item, and bump it
    with instance_create(x,y,obj_block)
    {
        ready = 1
        vspeed = -2
        alarm[0] = 4
        sprout = other.sprout
        event_user(0)
        sprite_index = spr_qblock_winged
    }

    //Destroy
    instance_destroy()

}

