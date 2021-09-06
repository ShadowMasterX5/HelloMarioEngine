/// @description Falling spike logic

//If the spike is not falling or shaking
if ready = 0
{

    //If Mario is under the spike
    if instance_exists(obj_mario)
    and obj_mario.x > x-72
    and obj_mario.x < x+88
    and obj_mario.y > y
    {

        //Change state
        ready = 1

        //Animate
        image_speed = 1

        //Begin falling
        alarm[0] = 80

    }

}
//If the spike is falling or shaking
else
{

    //Stop the spike from falling too fast
    if vspeed > 4
        vspeed = 4

    //Destroy if outside view
    if outside_view()
        instance_destroy()

}

