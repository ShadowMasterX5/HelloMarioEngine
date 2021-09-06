/// @description Warp from the top
if place_meeting(x,y-2,obj_mario)
{

    //Play a warp sound
    audio_play_sound(snd_warp,0,0)

    //Create a downwards moving warp Mario
    with instance_create(x+16,y-32,obj_warpmario) direction = 270

    //Destroy Mario
    with obj_mario instance_destroy()

}

