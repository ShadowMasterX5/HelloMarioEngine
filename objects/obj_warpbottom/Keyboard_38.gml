/// @description Warp from the bottom
if place_meeting(x,y+2,obj_mario)
{

    //Play a warp sound
    audio_play_sound(snd_warp,0,0)

    //Create an upwards moving warp Mario
    with instance_create(x+16,y+16,obj_warpmario) direction = 90

    //Destroy Mario
    with obj_mario instance_destroy()

}

