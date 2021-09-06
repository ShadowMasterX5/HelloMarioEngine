/// @description Make a new lakitu

//If music is not disabled
if obj_levelmanager.musicdisabled = 0
{

    //Make the correct lakitu
    with instance_create(x,y,mylakitu)
    {
        xmin = other.xmin
        xmax = other.xmax
    }

    //Destroy
    instance_destroy()

}

