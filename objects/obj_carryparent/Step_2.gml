/// @description If the item is bring held
if held = 0
{

    //If Mario exists
    if instance_exists(obj_mario)
    {

        //Snap to position
        x = obj_mario.x-sprite_width/2+sprite_xoffset
        y = obj_mario.y+11

        //Make sure Mario is carrying
        obj_mario.holding = 1

        ///Throw items
        if keyboard_check_pressed(vk_control)
        and obj_mario.disablecontrols = 0
        {

            //No longer being held
            held = 1

            //Hah!
            audio_play_sound(snd_hah,0,0)

            //Play throw sound
            audio_play_sound(snd_throw,0,0)

            //Reset holding variable
            obj_mario.alarm[0] = 2

            //Gravity
            gravity = 0.25

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
        x = obj_warpmario.x-sprite_width/2+sprite_xoffset
        y = obj_warpmario.y

        //Make sure Mario is carrying
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
        x = obj_doormario.x-sprite_width/2+sprite_xoffset
        y = obj_doormario.y+16

        //Make sure Mario is carrying
        obj_doormario.holding = 2

        //Be invisible
        visible = 0

    }

    //If warp note block exists
    else if instance_exists(obj_warpnoteblock)
    {

        //Snap to position
        x = obj_warpnoteblock.x-sprite_width/2+sprite_xoffset
        y = obj_warpnoteblock.y+11

        //Make sure Mario is carrying
        obj_warpnoteblock.holding = 1

        //Be visible
        visible = 1

    }

    //If jump spawn exists
    else if instance_exists(obj_jumpspawn)
    {

        //Snap to position
        x = obj_jumpspawn.x-sprite_width/2+sprite_xoffset
        y = obj_jumpspawn.y+11

        //Be visible
        visible = 1

    }

    //Otherwise, stop being held
    else
    {
        held = 1
        gravity = 0.25
        exit
    }

    //Move up if flipped vertically
    if image_yscale = 1
        y -= sprite_height

    //Move down if Mario is small
    if global.powerup = cs_small
        y += 10

}

