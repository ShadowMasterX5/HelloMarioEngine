/// @description Rock Mario logic
if image_index = 6
and instance_exists(obj_mario)
{

    //Move
    obj_mario.hspeed = 3*obj_mario.direct

    //Rotate
    angle -= 3*obj_mario.direct

    //If Mario is on the ground, and presses shift
    if keyboard_check_pressed(vk_shift)
    and obj_mario.state < 2
    {

        //Play the jump sound
        audio_play_sound(snd_jump,0,0)

        //With Mario
        with obj_mario
        {

            //Move upwards
            vspeed = -3.5

            //Switch to the jump state
            state = 2

        }

    }

    //Shatter on walls
    if collision_rectangle(obj_mario.bbox_left-1,bbox_top+4,obj_mario.bbox_right+1,bbox_bottom-1,obj_solid,1,0)
        instance_destroy()

    //Bump off ceilings
    if position_meeting(x,bbox_top,obj_solid)
    and obj_mario.vspeed < 0
    {
        obj_mario.vspeed = 0
        audio_play_sound(snd_bump,0,0)
    }

    //Cancel rock transformation by repressing control
    if keyboard_check_pressed(vk_control)
        alarm[0] = 2

}

