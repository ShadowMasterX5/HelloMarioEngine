/// @description Lakitu logic

//Select an object to follow
if instance_exists(obj_levelmanager)
and not instance_exists(obj_autoscroll)
    follow = obj_levelmanager
else if instance_exists(obj_mario)
    follow = obj_mario
else
{
    follow = noone
    hspeed = 0
}

//If there is an object to follow
if follow != noone
{

    //If said object is in its territory, follow it
    if follow.x > xmin
    and follow.x < xmax
    {
        if follow.x > x
            hspeed += 0.05
        if follow.x < x
            hspeed += -0.05
        if x < __view_get( e__VW.XView, 0 )-15
            x = __view_get( e__VW.XView, 0 )-15
        if x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-1
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-1
    }

    //Otherwise, get out
    else
    {
        if follow.x > (xmax-xmin)/2+xmin
            hspeed += -0.05
        if follow.x < (xmax-xmin)/2+xmin
            hspeed += 0.05
    }

    //Cap horizontal speed
    if hspeed > 1.5
        hspeed = 1.5
    else if hspeed < -1.5
        hspeed = -1.5

}

//Snap outside the level when outside the view
if x < __view_get( e__VW.XView, 0 )-32
    x = -32
if x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16
    x = room_width+16

//Snap to the correct y value
y = __view_get( e__VW.YView, 0 )+16+offset

