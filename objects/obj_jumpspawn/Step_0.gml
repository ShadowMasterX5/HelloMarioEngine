/// @description Finish jumping

//If Mario jumps up to the target height
if y < ystart
{

    //Create an upward moving Mario
    with instance_create(x,y,obj_mario) vspeed = -6

    //Destroy
    instance_destroy()

}

