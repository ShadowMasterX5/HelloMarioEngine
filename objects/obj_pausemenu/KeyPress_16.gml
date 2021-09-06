/// @description Menu selection

//Unpause the game if the first choice is selected
if menu_choice = 0
{

    //Unpause
    event_user(0)

    //Clear the shift key press
    keyboard_clear(vk_shift)

}

//Otherwise
else
{

    //Activate the level manager...
    instance_activate_object(obj_levelmanager)

    //...and tell it to stop the music
    with obj_levelmanager event_perform(ev_alarm,1)

    //Delete the screenshot
    if background_exists(back)
        background_delete(back)

    //Stop all sounds
    audio_stop_all()

    //Play the correct sound
    audio_play_sound(snd_correct,0,0)

    //For the second menu item, return to the world map
    if menu_choice = 1
        scr_return()

    //For the last menu item
    else
    {

        //Re-initialise all variables
        scr_init_globals()

        //Go to the title screen
        room_goto(rm_title)

    }

}

