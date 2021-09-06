/// @description Yoshi logic

//If Mario exists
if instance_exists(obj_mario)
{

    //Snap to position
    x = obj_mario.x
    y = obj_mario.y

    //Force him to be invisible
    obj_mario.visible = 0

    //Force him to hold Yoshi
    obj_mario.holding = 3

    //Force unduck if ducking
    if obj_mario.isduck = 1
    and not collision_rectangle(obj_mario.bbox_left,obj_mario.bbox_top-16,obj_mario.bbox_right,obj_mario.bbox_top,obj_solid,1,0)
        obj_mario.isduck = 0

    //If Yoshi is not licking anything
    if licking = 0
    {

        //Check whether Mario is jumping
        if obj_mario.state = 2
            jumping = 1
        else
            jumping = 0

        //Use stand pose if standing
        if obj_mario.state = 0
            image_index = 0

        //Animate when walking
        else if obj_mario.state = 1
            image_speed = 0.15

        //Otherwise, if the mouth is empty
        else if inmouth = noone
        {

            //Choose a pose based on vertical speed
            if obj_mario.vspeed > 0
                image_index = 1
            else
                image_index = 0

        }

        //Otherwise, use this image index
        else
            image_index = 1

    }

    //If Yoshi is not licking and control is pressed
    if licking = 0
    and keyboard_check_pressed(vk_control)
    and obj_mario.disablecontrols = 0
    {

        //If mouth is empty, start licking
        if inmouth = noone
        {
            audio_play_sound(snd_lick,0,0)
            licking = 1
            alarm[0] = 5
            anim = 0
        }

        //Otherwise, spit
        else
            event_user(0)

    }

    //If yellow Yoshi has something in its mouth
    if global.ycolor = 2
    and inmouth != noone
    {

        //If Mario lands after a jump, stomp
        if stateprev = 2
        and obj_mario.state != 2
            instance_create(x,y+16,obj_stomp)

        //Remember last state
        stateprev = obj_mario.state

    }

    //If Yoshi is blue
    else if global.ycolor = 3
    {

        //If shift is held outside water while mouth is full
        if keyboard_check(vk_shift)
        and obj_mario.isswim = 0
        and inmouth != noone
        {

            //If not flying and moving down, start flying
            if flying = 0
            and obj_mario.vspeed > 0
            {
                flying = 1
                alarm[3] = 1
            }

            //When flying
            if flying = 1
            {

                //Move up if there is no ceiling above Mario
                with obj_mario
                {
                    if not collision_rectangle(bbox_left,bbox_top-3,bbox_right,bbox_top,obj_solid,1,0)
                        vspeed = -2
                }

                //Sync animation with level manager
                flyanim = obj_levelmanager.anim

            }

            //Reset animation otherwise
            else
                flyanim = 0

        }

        //Otherwise, stop flying
        else
        {
            flying = 0
            flyanim = 1
        }

    }

    //Depth
    depth = -5

}

//If goal Mario exists
else if instance_exists(obj_goalmario)
{

    //Snap to position
    x = obj_goalmario.x
    y = obj_goalmario.y

    //Force him to be invisible
    obj_goalmario.visible = 0

    //Use walk sprites
    jumping = 0

    //Use stand pose when still
    if obj_goalmario.hspeed = 0
        image_index = 0

    //Animate when walking
    else
        image_speed = 0.15

    //Depth
    depth = -5

}

//If warp Mario exists
else if instance_exists(obj_warpmario)
{

    //Snap to position
    x = obj_warpmario.x
    y = obj_warpmario.y

    //Force him to be invisible
    obj_warpmario.visible = 0

    //Use walk sprites
    jumping = 0

    //Use stand pose when still
    if obj_warpmario.hspeed = 0
        image_index = 0

    //Animate when walking
    else
        image_speed = 0.15

    //Stay invisible in pipes
    if obj_warpmario.speed = 3
        visible = 0
    else
        visible = 1

    //Depth
    depth = 11

}

//If warp note block exists
else if instance_exists(obj_warpnoteblock)
{

    //Snap to position
    x = obj_warpnoteblock.x
    y = obj_warpnoteblock.y

    //Force him to be invisible
    obj_warpnoteblock.visible = 0

    //Use jump sprites
    jumping = 1

    //Use correct pose
    image_index = 0

    //Depth
    depth = -5

}

//If jump spawn exists
else if instance_exists(obj_jumpspawn)
{

    //Snap to position
    x = obj_jumpspawn.x
    y = obj_jumpspawn.y

    //Force him to be invisible
    obj_jumpspawn.visible = 0

    //Use jump sprites
    jumping = 1

    //Use correct pose
    image_index = 0

    //Depth
    depth = -5

}

//If Mario dies, destroy
else if instance_exists(obj_deadmario)
    instance_destroy()

//Use licking sprites when licking
if licking = 1
{
    if global.ycolor = 0
        sprite_index = spr_yoshi_lick
    else if global.ycolor = 1
        sprite_index = spr_yoshi_lick_r
    else if global.ycolor = 2
        sprite_index = spr_yoshi_lick_y
    else if global.ycolor = 3
        sprite_index = spr_yoshi_lick_b
    image_index = anim
}

//Otherwise
else
{

    //If mouth is full, use hold sprites
    if inmouth != noone
    {
        if global.ycolor = 0
            sprite_index = spr_yoshi_hold
        else if global.ycolor = 1
            sprite_index = spr_yoshi_hold_r
        else if global.ycolor = 2
            sprite_index = spr_yoshi_hold_y
        else if global.ycolor = 3
            sprite_index = spr_yoshi_hold_b
    }

    //If walking, use walk sprites
    else if jumping = 0
    {
        if global.ycolor = 0
            sprite_index = spr_yoshi_walk
        else if global.ycolor = 1
            sprite_index = spr_yoshi_walk_r
        else if global.ycolor = 2
            sprite_index = spr_yoshi_walk_y
        else if global.ycolor = 3
            sprite_index = spr_yoshi_walk_b
    }

    //Otherwise, use jump sprites
    else
    {
        if global.ycolor = 0
            sprite_index = spr_yoshi_jump
        else if global.ycolor = 1
            sprite_index = spr_yoshi_jump_r
        else if global.ycolor = 2
            sprite_index = spr_yoshi_jump_y
        else if global.ycolor = 3
            sprite_index = spr_yoshi_jump_b
    }

}

