/// @description Generate jumping cheep cheeps

//If Mario is in its territory
if instance_exists(obj_mario)
and obj_mario.x > xmin
and obj_mario.x < xmax
{

    //Generate cheep cheep
    instance_create(round((__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )))/16)*16,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-4,obj_generatorcheep)

    //Generate more later
    alarm[0] = 100

}

//Otherwise, wait
else
    alarm[0] = 10

