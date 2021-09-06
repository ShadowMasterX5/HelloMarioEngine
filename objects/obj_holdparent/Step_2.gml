/// @description If the item is being held
if held = 1
{

    //If Mario exists
    if instance_exists(obj_mario)
    {

        //Snap to position
        x = obj_mario.x-8+10*obj_mario.direct
        y = obj_mario.y+15

        //If control is still being held
        if keyboard_check(vk_control)
        {

            //Make sure Mario is holding
            obj_mario.holding = 2

            //Use the same facing direction
            direct = obj_mario.direct

        }

        //Otherwise
        else if obj_mario.disablecontrols = 0
        {

            //Play kick sound
            audio_play_sound(snd_kick,0,0)

            //Make Mario kick it
            with obj_mario event_user(7)

            //Stop Mario from holding it
            obj_mario.holding = 0

            //Stop being held
            held = 0

            //Reset depth
            depth = 0

            //Get thrown
            event_user(2)

        }

        //Be visible
        visible = 1

    }

    //If warp Mario exists
    else if instance_exists(obj_warpmario)
    {

        //Let warp Mario draw the item
        obj_warpmario.myitem = sprite_index

        //Snap to position
        x = obj_warpmario.x-8
        y = obj_warpmario.y+16

        //Make sure Mario is holding
        obj_warpmario.holding = 2

        //Be invisible
        visible = 0

    }

    //If door Mario exists
    else if instance_exists(obj_doormario)
    {

        //Let door Mario draw the item
        obj_doormario.myitem = sprite_index

        //Snap to position
        x = obj_doormario.x-8
        y = obj_doormario.y+16

        //Make sure Mario is holding
        obj_doormario.holding = 2

        //Be invisible
        visible = 0

    }

    //If warp note block exists
    else if instance_exists(obj_warpnoteblock)
    {

        //Snap to position
        x = obj_warpnoteblock.x-8+10*obj_warpnoteblock.direct
        y = obj_warpnoteblock.y+15

        //Make sure Mario is holding
        obj_warpnoteblock.holding = 2

        //Be visible
        visible = 1

    }

    //If jump spawn exists
    else if instance_exists(obj_jumpspawn)
    {

        //Snap to position
        x = obj_jumpspawn.x+2
        y = obj_jumpspawn.y+15

        //Be visible
        visible = 1

    }

    //Otherwise, stop being held
    else
        held = 0

}

