/// @description Fade the screen to black

//If this event was called manually
if mode = 0
{

    //Take a screenshot
    back = background_create_from_surface(application_surface,0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0,0)

    //Deactivate everything
    instance_deactivate_all(1)

}

//Start fading
done = 0

//To black
mode = 1

//Make sure it stops when its done
alarm[0] = 30

