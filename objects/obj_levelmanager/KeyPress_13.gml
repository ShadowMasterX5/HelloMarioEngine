/// @description Pause the game
if not keyboard_check(vk_alt)
{

    //Create the pause menu
    instance_create(0,0,obj_pausemenu)

    //Clear the enter key
    keyboard_clear(vk_enter)

}

