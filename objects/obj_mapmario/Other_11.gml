/// @description Inventory retrieval script

//Play the reserve item sound
audio_play_sound(snd_retrieve,0,0)

//Make Mario speak words
if global.powerup = cs_big
    audio_play_sound(snd_jwin,0,0)
else
    audio_play_sound(snd_gotcha,0,0)

//Update the sprite
sprite_index = scr_mariomap()

//Go back to the normal state
ready = 0

//Close the inventory
inventory = 0

