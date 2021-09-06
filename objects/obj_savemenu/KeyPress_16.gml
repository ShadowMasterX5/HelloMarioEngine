/// @description Menu selection

//Just play the correct sound for the third menu choice
if menu_choice = 2
    audio_play_sound(snd_correct,0,0)

//Otherwise
else
{

    //Save the game
    scr_save(global.file)

    //End the game if the second menu item is selected
    if menu_choice = 1
    {

        //Stop all sounds
        audio_stop_all()

        //Re-initialise all variables
        scr_init_globals()

        //Go to the title screen
        room_goto(rm_title)

    }

    //Play the whistle sound
    audio_play_sound(snd_whistle,0,0)

}

//Reset Mario's state
obj_mapmario.ready = 0

//Clear the shift key press
keyboard_clear(vk_shift)

//Destroy
instance_destroy()

