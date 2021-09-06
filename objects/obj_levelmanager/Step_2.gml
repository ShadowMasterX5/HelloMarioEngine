/// @description Deals with various game logic stuff

//Follow the autoscroll if it exists
if instance_exists(obj_autoscroll)
{
    x = obj_autoscroll.x
    y = obj_autoscroll.y
}

//Follow Mario if he exists
else if instance_exists(obj_mario)
{
    x = obj_mario.x
    y = obj_mario.y+16
}

//Follow goal Mario if he exists
else if instance_exists(obj_goalmario)
{
    x = obj_goalmario.x
    y = obj_goalmario.y+16
}

//Follow warp Mario if he exists
else if instance_exists(obj_warpmario)
{
    x = obj_warpmario.x
    y = obj_warpmario.y+16
}

//Follow jump spawn Mario if he exists
else if instance_exists(obj_jumpspawn)
{
    x = obj_jumpspawn.x
    y = obj_jumpspawn.y+16
}

//Follow vine spawn Mario if he exists
else if instance_exists(obj_vinespawn)
{
    x = obj_vinespawn.x
    y = obj_vinespawn.y+16
}

//Do not let the screen fall behind the classic scroll
if instance_exists(obj_classicscroll)
and x < obj_classicscroll.x
    x = obj_classicscroll.x

//Round position variables
x = round(x)
y = round(y)

//Horizontal parallax scrolling for layer 0 backgrounds
__background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )/2 )

//Vertical parallax scrolling for layer 0 backgrounds if needed
if __background_get( e__BG.Height, 0 ) < room_height
and __background_get( e__BG.Height, 0 ) > __view_get( e__VW.HView, 0 )
    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 )*(room_height-__background_get( e__BG.Height, 0 ))/(room_height-__view_get( e__VW.HView, 0 ) ))

//Deactivate things that have the following parents
instance_deactivate_object(obj_deactenemyparent)
instance_deactivate_object(obj_deactivation)

//Activate things that are on screen
instance_activate_region(__view_get( e__VW.XView, 0 )-32,__view_get( e__VW.YView, 0 )-32,__view_get( e__VW.WView, 0 )+64,__view_get( e__VW.HView, 0 )+64,1)

//If the barrier is enforced, and Mario exists
if barrier = 0
and instance_exists(obj_mario)
{

    //If space is pressed, drop the reserve item
    if keyboard_check_pressed(vk_space)
    and obj_mario.disablecontrols = 0
        event_user(4)

    //If Mario moves off the left side of the screen
    if obj_mario.x < __view_get( e__VW.XView, 0 )+5
    {

        //Snap Mario to the side of the screen
        obj_mario.x = __view_get( e__VW.XView, 0 )+5

        //Stop Mario if he keeps trying to move off
        if obj_mario.hspeed < 0
            obj_mario.hspeed = 0

        //Stop sliding Mario if he keeps trying to move off (Sneaky!)
        if instance_exists(obj_slider)
            obj_slider.x = __view_get( e__VW.XView, 0 )+5

    }

    //If Mario moves off the right side of the screen
    else if obj_mario.x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-5
    {

        //Snap Mario to the side of the screen
        obj_mario.x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-5

        //Stop Mario if he keeps trying to move off
        if obj_mario.hspeed > 0
            obj_mario.hspeed = 0

        //Stop sliding Mario if he keeps trying to move off (Sneaky!)
        if instance_exists(obj_slider)
            obj_slider.x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-5

    }

}

//If there are over 99 coins collected
if global.coins > 99
{

    //Subtract 100 coins
    global.coins -= 100

    //Create the extra life on Mario if he exists
    if instance_exists(obj_mario)
        with instance_create(obj_mario.x-8,obj_mario.y,obj_score) event_user(7)

    //Otherwise, create the extra life on the level manager
    else
        with instance_create(x-8,y,obj_score) event_user(7)

}

//Make the screen shake if thwomp sound plays
if not audio_is_playing(snd_thwomp)
    alarm[11] = 2

