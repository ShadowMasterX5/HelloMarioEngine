/// @description Finish turning

//If Bowser is done turning
if ready = -1
or ready = 8
{

    //If he is done turning after a stomp
    if ready = 8
    {

        //Prepare to fight
        alarm[10] = 2

        //Face Mario
        if instance_exists(obj_mario)
        {
            if x > obj_mario.x
                direct = 1
            else
                direct = -1
        }

    }

    //Change sprite
    sprite_index = spr_bowser

    //Reset state
    ready = 0

    //Do not animate
    image_speed = 0

    //Use normal pose
    image_index = 0

}

//If Bowser needs to keep turning after a stomp
else if ready > 5
{

    //Increment state
    ready++

    //Face the other way
    direct = -direct

}

