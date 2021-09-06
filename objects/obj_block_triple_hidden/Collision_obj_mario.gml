/// @description If Mario jumps from below
if other.vspeed < 0
and other.bbox_top > bbox_bottom+other.vspeed
{

    //Create a new triple block, give it the same items, and bump it
    with instance_create(x,y,obj_block_triple)
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

