/// @description The save menu

//Change Mario to the event state
obj_mapmario.ready = 1

//Play message sound
audio_play_sound(snd_message,0,0)

//Play Mario's voice
audio_play_sound(snd_hoohoo,0,0)

//The selected menu item
menu_choice = 0

//Menu text
menu[0] = "Save and Continue"
menu[1] = "Save and Quit"
menu[2] = "Continue without Saving"

