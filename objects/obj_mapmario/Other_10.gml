/// @description What happens when Mario enters a level

//Save Mario's current location
ds_map_replace(global.worldmap,"mapx",x)
ds_map_replace(global.worldmap,"mapy",y)

//Stop the music
audio_stop_sound(snd_mapmusic)

//Play the enter level sound
audio_play_sound(snd_enterstage,0,0)

//Mario's voice
audio_play_sound(snd_letsgo,0,0)

//Yoshi's voice
if global.yoshi = 1
    audio_play_sound(snd_yoshi_happy,0,0)

