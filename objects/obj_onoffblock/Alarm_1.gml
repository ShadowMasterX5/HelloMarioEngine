/// @description Finish block bump
vspeed = 0
y = ystart

//Play a magical sound
audio_play_sound(snd_magic,0,0)

//Flip the state of the on/off blocks
if global.onoffblock = 0
    global.onoffblock = 1
else
    global.onoffblock = 0

//Make all on/off blocks show the correct state
with obj_onoffblock image_index = global.onoffblock

//Make all on/off platforms be the correct state
with obj_onoffplatform event_user(global.onoffblock)

//The block can be bumped again
ready = 0

