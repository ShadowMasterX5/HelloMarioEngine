/// @description Skull raft logic

//If this is the rightmost raft
if myright = noone
{

    //Start the raft if Mario gets on the raft
    if ready = 0
    and collision_rectangle(bbox_left-length,bbox_top-2,bbox_right,bbox_top+4,obj_mario,0,0)
        event_user(0)

    //Stop the raft when running into a solid
    else if hspeed = 1
    and collision_rectangle(bbox_right,bbox_top,bbox_right,bbox_bottom,obj_solid,0,1)
    {
        x = collision_rectangle(bbox_right,bbox_top,bbox_right,bbox_bottom,obj_solid,0,1).x-16
        event_user(1)
    }

}

//Ride the lava
if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-3,obj_lava,1,0)
{
    while collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-4,obj_lava,1,0)
        y--
    vspeed = 0
    gravity = 0
}
else
    gravity = 0.25

//Cap fall speed
if vspeed > 4
    vspeed = 4

