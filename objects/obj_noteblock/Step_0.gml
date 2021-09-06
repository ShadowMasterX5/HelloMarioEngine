/// @description Note block bumping

//If the block can be bumped
if ready = 0
{

    //If Mario bumps from below
    if collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_mario,0,0)
    and obj_mario.state = 2
    {

        //This block is hit
        ready = 1

        //Move up
        vspeed = -2
        alarm[0] = 4

    }

    //If Mario bumps from above
    else if collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_mario,0,0)
    {

        //This block is hit
        ready = 1

        //Move down
        vspeed = 2
        alarm[2] = 4

        //Play a bump sound
        audio_play_sound(snd_bump,0,0)

        //Make Mario bounce
        event_user(1)

    }

}

