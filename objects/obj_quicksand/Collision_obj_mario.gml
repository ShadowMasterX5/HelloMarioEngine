/// @description Mario jumping out

//Disable spin jump
other.stompstyle = 0

//If the jump key is pressed
if other.jumpnow != 1
and keyboard_check_pressed(vk_shift)
{

    //Play the jump sound
    audio_play_sound(snd_jump,0,0)

    //Make Mario move upwards
    other.vspeed = -3.85

    //Enable variable jumping
    other.jumpnow = 1

    //Clear the shift key
    keyboard_clear(vk_shift)

}

//Move him down slowly
if other.vspeed > 0.5
    other.vspeed = 0.5

