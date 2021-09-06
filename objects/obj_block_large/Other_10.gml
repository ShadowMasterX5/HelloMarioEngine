/// @description Play the thwomp sound
audio_play_sound(snd_thwomp,0,0)

//Make a coin come out if this is a coin block
if sprout = cs_coin
    instance_create(x+8,y,obj_blockcoin)

