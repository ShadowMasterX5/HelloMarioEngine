/// @description Flip cards

//If shift is pressed when the game is accepting input and the card is not flipped
if other.sprite_index = spr_cardgame_flip
and ready = 0
and keyboard_check_pressed(vk_shift)
{

    //Disable input
    ready = 1

    //Play the correct sound
    audio_play_sound(snd_correct,0,0)

    //Make the card start flipping
    other.image_speed = 0.3

}

