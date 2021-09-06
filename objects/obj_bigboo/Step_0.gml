/// @description Boo logic

//If Mario exists, the boo is in the room, and the boo can move
if instance_exists(obj_mario)
and not outside_view()
and ready = 1
{

    //Remember last image index
    imageindexprev = image_index

    //If Mario is looking away, give chase
    if (obj_mario.x > x+32 and obj_mario.direct = 1)
    or (obj_mario.x < x+32 and obj_mario.direct = -1)
        image_index = 1

    //Otherwise, hide
    else
        image_index = 0

    //If the boo started going after Mario, play the boo sound and give chase
    if imageindexprev = 0
    and image_index = 1
    {
        audio_play_sound(snd_boo2,0,0)
        speed = 1
        direction = point_direction(x,y,obj_mario.x,obj_mario.y)
    }

    //If the boo just stopped moving, stop it
    else if imageindexprev = 1
    and image_index = 0
    {
        ready = 0
        alarm[0] = 8
        speed = 0
    }

    //If the boo is giving chase
    if image_index = 1
    {

        //Turn towards Mario
        turn_towards_direction(point_direction(x,y,obj_mario.x,obj_mario.y),8)

        //Look at Mario
        if obj_mario.x > x+32
            direct = 1
        else
            direct = -1

    }

}

//Otherwise, stop
else
{
    image_index = 0
    speed = 0
}

