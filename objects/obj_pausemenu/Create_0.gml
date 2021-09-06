/// @description The pause menu

//Take a screenshot
back = background_create_from_surface(application_surface,0,0,640,480,0,0)

//Deactivate everything
instance_deactivate_all(1)

//Activate the persistent object
instance_activate_object(obj_persistent)

//Play the pause sound
audio_play_sound(snd_pause,0,0)

//The selected menu item
menu_choice = 0

//Menu text
menu[0] = "Continue"
menu[1] = "Return to World Map"
menu[2] = "Quit Game"

