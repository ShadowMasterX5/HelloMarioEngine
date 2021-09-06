/// @description Prevents the camera from moving backwards
if instance_exists(obj_levelmanager)
{

    //If the level manager is to the left, move it back to where it was previously
    if obj_levelmanager.barrier = 0
    and obj_levelmanager.x < x
        obj_levelmanager.x = x

    //Otherwise, move to its location
    else
        x = obj_levelmanager.x

}

