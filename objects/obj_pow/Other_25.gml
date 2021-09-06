/// @description Create POW effects

//Play thwomp sound
audio_play_sound(snd_thwomp,0,0)

//Kill things on screen
instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_powkiller)

//Make a POW squish effect
with instance_create(x,y-16,obj_smoke) sprite_index = spr_powsquish

//Destroy
instance_destroy()

