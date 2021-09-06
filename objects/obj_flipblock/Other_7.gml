/// @description Stop flipping after some number of flips

//If there is more flips, decrement
if flips > 0
    flips--

//Otherwise, if Mario is not in the way
else if not place_meeting(x,y,obj_mario)
{

    //Stop animating
    image_speed = 0
    image_index = 0

    //This block can be hit again
    ready = 0

    //Create a solid
    mysolid = instance_create(x,y,obj_solid)

}

