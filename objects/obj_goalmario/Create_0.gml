/// @description Mario on the flagpole

//Stop the music and time
with obj_levelmanager
{
    event_user(3)
    alarm[2] = 0
}

//Remember whether a level or secret level was cleared
if instance_exists(obj_flagpole_secret)
    global.clear = 2
else
    global.clear = 1

//Forget checkpoints
global.checkpoint = noone

//Goal Mario's state
ready = 0

//Do not animate
image_speed = 0

//Use the goal sprite
sprite_index = scr_mariogoal()

//Use small mask for small Mario
if global.powerup = cs_small
    mask_index = spr_smallmask

//Move down
vspeed = 1.5

//Start walking after reaching the bottom
alarm[0] = 130

//Play the flagpole sound
audio_play_sound(snd_flagpole,0,0)

