/// @description Generate diagonal bullet bills

//If Mario is in its territory
if instance_exists(obj_mario)
and obj_mario.x > xmin
and obj_mario.x < xmax
{

    //Play thwomp sound
    audio_play_sound(snd_thwomp,0,0)

    //Make diagonal bullets
    with instance_create(__view_get( e__VW.XView, 0 )-6,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-10,obj_cannonball)
    {
        sprite_index = spr_bulletbill_diagonal
        direction = 45
    }
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-10,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-10,obj_cannonball)
    {
        sprite_index = spr_bulletbill_diagonal
        image_index = 3
        direction = 135
    }
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-10,__view_get( e__VW.YView, 0 )-6,obj_cannonball)
    {
        sprite_index = spr_bulletbill_diagonal
        image_index = 2
        direction = 225
    }
    with instance_create(__view_get( e__VW.XView, 0 )-6,__view_get( e__VW.YView, 0 )-6,obj_cannonball)
    {
        sprite_index = spr_bulletbill_diagonal
        image_index = 1
        direction = 315
    }

    //Generate more later
    alarm[0] = 200

}

//Otherwise, wait
else
    alarm[0] = 10

