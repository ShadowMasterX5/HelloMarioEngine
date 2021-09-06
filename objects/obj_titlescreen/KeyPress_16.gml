/// @description Load the selected file

//Play the enter level sound
audio_play_sound(snd_enterstage,0,0)

//Play Mario's voice
audio_play_sound(snd_letsgo,0,0)

//Stop the music
audio_stop_sound(snd_titlemusic)

//Figure out what save file is selected
if menu_choice = 0
    global.file = "SaveA.sav"
else if menu_choice = 1
    global.file = "SaveB.sav"
else
    global.file = "SaveC.sav"

//Load the selected save file
if file_exists(global.file)
    scr_load(global.file)

//Go to the world map
scr_return()

