/// @description Shoe logic

//If Mario exists
if instance_exists(obj_mario)
{

    //Snap to position
    x = obj_mario.x
    y = obj_mario.y+16

    //Force him to be invisible
    obj_mario.visible = 0

    //Force him to hold shoe
    obj_mario.holding = 3

    //Force him to spin jump
    obj_mario.stompstyle = 1

    //Force unduck if ducking
    if obj_mario.isduck = 1
    and not collision_rectangle(obj_mario.bbox_left,obj_mario.bbox_top-16,obj_mario.bbox_right,obj_mario.bbox_top,obj_solid,1,0)
        obj_mario.isduck = 0

    //If Mario is standing, use first image index
    if obj_mario.state = 0
        image_index = 0

    //If Mario is walking or jugemu shoe is flying, animate
    else if obj_mario.state = 1
    or (global.ycolor = 3 and flying = 1)
        image_speed = 0.15

    //Otherwise, use second image index
    else
        image_index = 1

    //If on a dossun shoe
    if global.ycolor = 2
    {

        //If Mario lands after a jump, stomp
        if stateprev = 2
        and obj_mario.state != 2
            instance_create(x,y,obj_stomp)

        //Remember last state
        stateprev = obj_mario.state

    }

    //If on a jugemu shoe
    else if global.ycolor = 3
    {

        //If shift is held outside water
        if keyboard_check(vk_shift)
        and obj_mario.isswim = 0
        {

            //If not flying and moving down, start flying
            if flying = 0
            and obj_mario.vspeed > 0
            {
                flying = 1
                alarm[1] = 1
            }

            //When flying, move up if there is no ceiling above Mario
            if flying = 1
            {
                with obj_mario
                {
                    if not collision_rectangle(bbox_left,bbox_top-3,bbox_right,bbox_top,obj_solid,1,0)
                        vspeed = -2
                }
            }

        }

        //Otherwise, stop flying
        else
            flying = 0

    }

    //Depth
    depth = -5

}

//If warp Mario exists
else if instance_exists(obj_warpmario)
{

    //Snap to position
    x = obj_warpmario.x
    y = obj_warpmario.y+16

    //Force him to be invisible
    obj_warpmario.visible = 0

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
    y = obj_warpnoteblock.y+16

    //Force him to be invisible
    obj_warpnoteblock.visible = 0

    //Depth
    depth = -5

}

//If jump spawn exists
else if instance_exists(obj_jumpspawn)
{

    //Snap to position
    x = obj_jumpspawn.x
    y = obj_jumpspawn.y+16

    //Force him to be invisible
    obj_jumpspawn.visible = 0

    //Depth
    depth = -5

}

//If Mario beats the level or dies, destroy
else if instance_exists(obj_goalmario)
or instance_exists(obj_deadmario)
{
    audio_play_sound(snd_magic,0,0)
    instance_create(x,y,obj_statuesmoke)
    instance_destroy()
}

