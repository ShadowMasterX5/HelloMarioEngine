/// @description Generate magikoopas

//Generate if Mario is in its territory
if instance_exists(obj_mario)
and obj_mario.x > xmin
and obj_mario.x < xmax
        instance_create(__view_get( e__VW.XView, 0 )+100+92*ready+random(88),__view_get( e__VW.YView, 0 )+random(208),obj_magikoopa2)

//Generate on the other side next time
ready = -ready

//Generate again
alarm[0] = 400

