/// @description Instant death when Mario is embed inside a solid
with other
{
    if collision_rectangle(bbox_left+4,bbox_top+4,bbox_right-4,bbox_bottom-4,other.id,0,0)
    {
        instance_create(x,y,obj_deadmario)
        instance_destroy()
    }
}

