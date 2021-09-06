/// @description Finish switch press
if sprite_index = spr_pswitch_press
{

    //Make P-Switch related stuff happen for 800 steps
    with obj_levelmanager
    {
        event_user(1)
        alarm[10] = 800
    }

    //Make smoke
    instance_create(x,y,obj_smoke)

    //Destroy
    instance_destroy()

}

