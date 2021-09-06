/// @description Stop Mario from jumping over the flagpole.
if collision_rectangle(bbox_left,-96,bbox_right,y,obj_mario,0,0)
{

    //Stop Mario if he goes too far
    if obj_mario.x > x
        obj_mario.x = x

    //Workaround to prevent sliding Mario from going over the flagpole.
    if instance_exists(obj_slider)
    {
        if obj_slider.x > x
            obj_slider.x = x
    }

}

