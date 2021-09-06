/// @description Pop

//Play pop sound
audio_play_sound(snd_pop,0,0)

//Make a coin
with instance_create(x+8,y+8,obj_coin) image_index = obj_coin.image_index

//Destroy
instance_destroy()

