/// @description If the item is not bring held
if held = 1
{

    //Cap fall speed
    if vspeed > 4
        vspeed = 4

    //Destroy outside view
    if outside_view()
        instance_destroy()

}

