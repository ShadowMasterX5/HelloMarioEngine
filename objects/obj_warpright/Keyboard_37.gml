/// @description Warp from the right
if place_meeting(x+2,y,obj_mario)
{

    //Play a warp sound
    audio_play_sound(snd_warp,0,0)

    //Create a leftwards moving warp Mario
    with instance_create(x+32,y,obj_warpmario) direction = 180

    //Destroy Mario
    with obj_mario instance_destroy()

}

