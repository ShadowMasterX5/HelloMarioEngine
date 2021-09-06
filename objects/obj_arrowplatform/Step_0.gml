/// @description Generate arrow platforms
if ready = 0
and collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_mario,0,0)
and obj_mario.y < y-27
{

    //Change state
    ready = 1

    //Destroy old platform
    with myplat instance_destroy()

    //Create new arrowplatform
    myplat = instance_create(x,y,obj_arrowplatform_move)

    //Reset state
    alarm[0] = 15

}

