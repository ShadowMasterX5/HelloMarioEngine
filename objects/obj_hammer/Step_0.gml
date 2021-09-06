/// @description Destroy below view
if y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )
    instance_destroy()

//Correct facing direction
if hspeed < 0
    image_xscale = -1

