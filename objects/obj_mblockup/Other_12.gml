/// @description Stay out of walls when thrown
if not position_meeting(bbox_left+8,bbox_top,obj_solid)
{
    with instance_place(x,y,obj_solid)
    {
        if x > other.x
            other.x = bbox_left-16
        else
            other.x = bbox_right+1
    }
}

//Default event
event_inherited()

