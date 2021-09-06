/// @description Finish breathing fire

//Play fire sound
audio_play_sound(snd_podoboo,0,0)

//Breathe fire
instance_create(x,y+8,obj_bowserfire)

//Change state
ready = 0

//Change pose
image_index = 0

//Breathe more later
alarm[6] = 50

