/// @description Warp Mario logic

//If not in cannon mode
if cannon = 0
{

    //If Mario is moving horizontally
    if hspeed != 0
    {

        //Make him face in the direction he is moving in
        direct = sign(hspeed)

        //Animate
        image_speed = 0.15

        //Choose the appropriate sprite
        if holding = 0
            sprite_index = scr_mariowalk()
        else
        {
            sprite_index = scr_mariohold()
            direct = -direct
        }

    }

    //If Mario is moving vertically
    else
    {

        //Do not animate
        image_speed = 0

        //Choose the appropriate image index
        image_index = 0

        //Choose the appropriate sprite
        sprite_index = scr_mariowarp()

    }

    //If Mario is submerged in solids
    if collision_point(bbox_left,bbox_top,obj_solid,1,1)
    and collision_point(bbox_right,bbox_top,obj_solid,1,1)
    and collision_point(bbox_left,bbox_bottom,obj_solid,1,1)
    and collision_point(bbox_right,bbox_bottom,obj_solid,1,1)
    {

        //Go faster
        speed = 3

        //Become invisible
        visible = 0

    }

    //Otherwise
    else
    {

        //Play the warp sound if slowing down
        if speed = 3
            audio_play_sound(snd_warp,0,0)

        //Go slow
        speed = 1

        //Become visible
        visible = 1

    }

    //If he is ready to stop warping, and there are no solids, turn into Mario
    if ready = 1
    and not place_meeting(x,y,obj_solid)
        event_user(0)

}

//If he is in diagonal cannon mode, and moving down, turn into Mario
else if cannon = 2
and vspeed > 0
    event_user(0)

