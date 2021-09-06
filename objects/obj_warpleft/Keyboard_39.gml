/// @description Warp from the left
if place_meeting(x-2,y,obj_mario)
{

    //Play a warp sound
    audio_play_sound(snd_warp,0,0)

    //Create a rightwards moving warp Mario
    with instance_create(x-16,y,obj_warpmario) direction = 0

    //Destroy Mario
    with obj_mario instance_destroy()

}

