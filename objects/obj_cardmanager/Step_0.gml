/// @description Move the cursor

//If the game is waiting for input
if ready = 0
{

    //If up is pressed not on the top row
    if keyboard_check_pressed(vk_up)
    and y != 44
    {

        //Move to the card above
        y -= 64

        //Play the move sound
        audio_play_sound(snd_move,0,0)

    }

    //If down is pressed not on the bottom row
    if keyboard_check_pressed(vk_down)
    and y != 172
    {

        //Move to the card below
        y += 64

        //Play the move sound
        audio_play_sound(snd_move,0,0)

    }

    //If left is pressed not on the left row
    if keyboard_check_pressed(vk_left)
    and x != 72
    {

        //Move to the card to the left
        x -= 48

        //Play the move sound
        audio_play_sound(snd_move,0,0)

    }

    //If right is pressed not on the right row
    if keyboard_check_pressed(vk_right)
    and x != 312
    {

        //Move to the card to the right
        x += 48

        //Play the move sound
        audio_play_sound(snd_move,0,0)

    }

}

