/// @description If Mario jumps from below
if other.vspeed < 0
and other.bbox_top > bbox_bottom+other.vspeed
{

    //Create a new note block, give it the same destination, and bump it
    with instance_create(x,y,obj_noteblock_warp)
    {
        ready = 1
        vspeed = -2
        alarm[0] = 4
        myroom = other.myroom
    }

    //Destroy
    instance_destroy()

}

