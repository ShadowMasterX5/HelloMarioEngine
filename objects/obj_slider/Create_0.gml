/// @description Mario sliding on his merry way

//Slide type
//0: Normal, 1: Shell, 2: Penguin
type = 0

//Make Mario invincible, disable his controls, and disable skidding
with obj_mario
{
    invincible = 1
    disablecontrols = 1
    skidnow = 2
}

//Inherit Mario's horizontal speed and direction
hspeed = obj_mario.hspeed
direct = obj_mario.direct

//Prevent skidding
audio_stop_sound(snd_skid)

//Number of kills
hitpoint = 0

//Use the slide sprite
sprite_index = scr_marioslide()

//Create smoke
alarm[0] = 8

