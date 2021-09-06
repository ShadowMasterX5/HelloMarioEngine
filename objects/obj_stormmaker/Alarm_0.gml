/// @description Create thunder
instance_create(0,0,obj_lightningsheet)

//Make the sound of thunder
audio_play_sound(snd_thunder,0,0)

//Create more thunder after a random amount of time
alarm[0] = random(120)+130

