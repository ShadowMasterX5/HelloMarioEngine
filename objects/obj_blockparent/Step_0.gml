/// @description Check for Mario bonking his head on this block
if ready = 0
and collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_mario,0,0)
and obj_mario.state = 2
and obj_mario.vspeed <= 0
{

    //The block is hit
    ready = 1

    //Move up
    vspeed = -2
    alarm[0] = 4

    //Block specific events
    event_user(0)

}

