/// @description Press the switch
if sprite_index = spr_pswitch
{

    //Sprite change
    sprite_index = spr_pswitch_press

    //Animate
    image_speed = 0.5
    image_index = 0

    //Play a thwomp sound
    audio_play_sound(snd_thwomp,0,0)

}

