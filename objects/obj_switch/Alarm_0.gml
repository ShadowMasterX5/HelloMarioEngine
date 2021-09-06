/// @description End the switch press

//Stop the music and time
with obj_levelmanager
{
    event_user(3)
    alarm[2] = 0
}

//Play the victory music
audio_play_sound(snd_flagsong,1,0)

//Stop the switch press animation
image_speed = 0
image_index = 2

//Choose the appropriate global variable to activate
if sprite_index = spr_switch_red
    global.palacered = 1
else if sprite_index = spr_switch_blue
    global.palaceblue = 1
else if sprite_index = spr_switch_yellow
    global.palaceyellow = 1
else if sprite_index = spr_switch_green
    global.palacegreen = 1

//Clear the level
global.clear = 1

//Disable Mario's controls
with obj_mario disablecontrols = 1

//Let Mario bask in his victory
alarm[1] = 390

