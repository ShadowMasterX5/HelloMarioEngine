/// @description Level beat animation

//Smash the castle
image_index = 1

//Play a smashing sound
audio_play_sound(snd_castlebreak,0,0)

//Make some castle smashing smoke
with instance_create(x,y,obj_smoke) sprite_index = spr_castlesmoke

