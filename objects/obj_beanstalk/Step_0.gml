/// @description Make the vine warp

//If the beanstalk is above the level
if y < 0
{

    //Make a vine warp if there is a warp defined
    if myroom != noone
        with instance_create(x,-16,obj_vinewarp) myroom = other.myroom

    //Destroy
    instance_destroy()

}

