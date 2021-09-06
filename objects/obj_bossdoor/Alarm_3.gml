/// @description Prevent the view from going too far to the right

//If the view is too far
if x <= __view_get( e__VW.XView, 0 )
{

    //Make sure the view is perfect
    __view_set( e__VW.XView, 0, x )

    //Stop the scrolling at the right spot
    with obj_autoscroll
    {
        speed = 0
        x = other.x+__view_get( e__VW.WView, 0 )/2-8
    }

}

//Otherwise, keep checking
else
    alarm[3] = 1

