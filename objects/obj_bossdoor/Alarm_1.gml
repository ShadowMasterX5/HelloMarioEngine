/// @description Boss door animation 3
image_index = 2
audio_play_sound(snd_castlebreak,0,0)
instance_create(x,y+32,obj_smoke)
alarm[2] = 20

//Stop the old music
with obj_levelmanager alarm[1] = 19

