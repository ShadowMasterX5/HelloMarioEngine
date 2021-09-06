/// @description Check if Mario can pick up this brick
if keyboard_check_pressed(vk_control)
and collision_rectangle(bbox_left-2,bbox_top-1,bbox_right+2,bbox_bottom-2,obj_mario,0,0)
and scr_canhold()
{

    //Create the appropriate brick, and force it to be held
    with instance_create(obj_mario.x,obj_mario.y+16,obj_thrownbrick)
    {
        sprite_index = other.throwsprite
        event_user(15)
    }

    //Destroy
    instance_destroy()

}

