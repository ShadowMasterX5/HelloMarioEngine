/// @description POW effect

//Play thwomp sound
audio_play_sound(snd_thwomp,0,0)

//Create POW killer
instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_powkiller)

