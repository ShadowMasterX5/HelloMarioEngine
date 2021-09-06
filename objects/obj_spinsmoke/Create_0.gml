/// @description Fancy smoke with stars

//Play spin stomp sound
audio_play_sound(snd_spinstomp,0,0)

//Animate
image_speed = 0.3

//Distance to stars
starx = 0
stary = 0

//When to stop drawing the stars
starstop = 0

//Stop drawing stars
alarm[0] = 16

//Make fireballs if Mario is on a baburu shoe
if global.yoshi = 2
and global.ycolor = 1
{
    with instance_create(x+8,y,obj_fireball) hspeed = 3
    with instance_create(x+8,y,obj_fireball) hspeed = -3
}

