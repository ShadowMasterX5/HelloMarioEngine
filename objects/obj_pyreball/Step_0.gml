/// @description Pyreball logic

//Previous hspeed
prevhspeed = hspeed

//Default event
event_inherited()

//If the direction changed, destroy
if hspeed != prevhspeed
    event_user(0)

//Destroy outside view
if outside_view()
    instance_destroy()

//Bounce
if gravity = 0
{
    vspeed = -2.5
    y--
}

//Melt ice
with collision_rectangle(bbox_left-6,bbox_top-4,bbox_right+6,bbox_bottom+4,obj_icecoin,0,0)
    event_user(0)

