/// @description Let Mario pull on it
if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
and (obj_mario.y < y-26 or (obj_mario.y < y-10 and sprite_height < 10))
and scr_canpull()
{

    //Create a puller
    with instance_create(obj_mario.x,obj_mario.y,obj_puller)
    {
        pulled = other.id
        event_user(0)
    }

}

