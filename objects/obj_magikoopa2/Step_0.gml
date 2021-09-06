/// @description Face Mario
if image_index = 0
and instance_exists(obj_mario)
{
    if obj_mario.x > x
        direct = 1
    else
        direct = -1
}

//Destroy outside view
if outside_view()
    instance_destroy()

