/// @description If Mario jumps from below
if other.vspeed < 0
and other.bbox_top > bbox_bottom+other.vspeed
{

    //Create a new yellow note block and bump it
    with instance_create(x,y,obj_noteblock_yellow)
    {
        ready = 1
        vspeed = -2
        alarm[0] = 4
    }

    //Destroy
    instance_destroy()

}

