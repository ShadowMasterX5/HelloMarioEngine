/// @description Arrow platform logic

//If Mario gets on this platform
if ready = 0
and collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_mario,0,0)
and obj_mario.y < y-27
{

    //On state
    ready = 1

    //Play move sound
    audio_play_sound(snd_move,0,0)

    //Change image index
    image_index = 1

    //Finish animation
    alarm[3] = 4

    //Choose a first horizontal direction
    if dir = 0
    {
        if obj_mario.direct = -1
            dir = 1
        else
            dir = 3
    }

}

//If Mario is on this moving platform
if collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
and obj_mario.y < y-26
and obj_mario.state < 2
{

    //Snap Mario vertically
    obj_mario.y = ceil(bbox_top-32)

    //Move Mario horizontally if there is no solid in his way
    if (hspeed > 0 and not collision_rectangle(obj_mario.bbox_right+hspeed,obj_mario.bbox_top,obj_mario.bbox_right+hspeed,obj_mario.bbox_bottom-1,obj_solid,0,0))
    or (hspeed < 0 and not collision_rectangle(obj_mario.bbox_left+hspeed,obj_mario.bbox_top,obj_mario.bbox_left+hspeed,obj_mario.bbox_bottom-1,obj_solid,0,0))
        obj_mario.x += hspeed

    //If moving up and Mario's head bumps into a solid
    if vspeed < 0
    and collision_rectangle(obj_mario.bbox_left,obj_mario.bbox_top-1,obj_mario.bbox_right,obj_mario.bbox_top,obj_solid,0,0)
    {

        //Play bump sound
        audio_play_sound(snd_bump,0,0)

        //Make smoke
        instance_create(x+8,y,obj_smoke)

        //Destroy
        instance_destroy()

    }

}

//Reset state when Mario gets off the platform
else if not collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_mario,0,0)
    ready = 0

