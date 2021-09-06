/// @description Force Mario to adhere to the scrolling... or else!

//If Mario exists
if instance_exists(obj_mario)
{

    //Follow Mario vertically if that feature is enabled
    if follow_y = 1
        y = obj_mario.y

    //Prevent Mario from going too high off screen
    else if obj_mario.y < __view_get( e__VW.YView, 0 )-48
        obj_mario.y = __view_get( e__VW.YView, 0 )-48

    //If the barrier is being enforced
    if obj_levelmanager.barrier = 0
    {

        //If Mario gets squished on the left side of the screen, kill him
        if obj_mario.x < __view_get( e__VW.XView, 0 )+6
        and collision_rectangle(obj_mario.x+5,obj_mario.bbox_top+2,obj_mario.x+5,obj_mario.y+30,obj_solid,1,0)
        {
            instance_create(__view_get( e__VW.XView, 0 )+8,obj_mario.y,obj_deadmario)
            with obj_mario instance_destroy()
        }

        //If Mario gets squished on the right side of the screen, kill him
        else if obj_mario.x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-6
        and collision_rectangle(obj_mario.x-5,obj_mario.bbox_top+2,obj_mario.x-5,obj_mario.y+30,obj_solid,1,0)
        {
            instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-8,obj_mario.y,obj_deadmario)
            with obj_mario instance_destroy()
        }

        //If Mario falls off the screen, kill him
        else if obj_mario.bbox_top > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
        {
            instance_create(obj_mario.x,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-32,obj_deadmario)
            with obj_mario instance_destroy()
        }

    }

}

//Stop scrolling if Mario dies
else if instance_exists(obj_deadmario)
    speed = 0

