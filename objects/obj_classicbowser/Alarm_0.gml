/// @description Fire projectiles
if ready = 0
{

    //Use appropriate image index
    image_index = 2

    //Finish animation
    alarm[3] = 14

    //If Mario is in its territory
    if instance_exists(obj_mario)
    and obj_mario.x > xmin
    {

        //Fire variable
        fire = noone

        //Create fire
        if not outside_view()
            fire = instance_create(x,y+8,obj_bowserstatue_fire)
        else if obj_mario.x < x
            fire = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+7,ystart-32+irandom(4)*16,obj_bowserstatue_fire)

        //With the fire
        with fire
        {

            //Give it the right look
            sprite_index = spr_bowserfire
            image_xscale = -1

            //Play fiery sound
            audio_play_sound(snd_podoboo,0,0)

        }

    }

    //Fire more
    alarm[0] = 128

}

