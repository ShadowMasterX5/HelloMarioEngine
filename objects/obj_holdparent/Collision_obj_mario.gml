/// @description Interact with this item
if held = 0
{

    //If Mario is above and moving down, use the stomp event
    if other.bbox_bottom < bbox_top-vspeed+5
    and other.vspeed > 0
        event_user(1)

    //Otherwise, if Mario can hold the item
    else if scr_canhold()
    {

        //Force him to hold it
        other.holding = 2

        //Be held
        held = 1

        //Change depth
        depth = -4

        //Disable gravity
        gravity = 0

        //Stop movement
        speed = 0

    }

}

