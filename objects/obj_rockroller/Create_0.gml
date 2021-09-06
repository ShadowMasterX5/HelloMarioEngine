/// @description It's karate time!

//Stop everything if there are solids in the way
if collision_rectangle(obj_mario.bbox_left-1,bbox_top+4,obj_mario.bbox_right+1,bbox_bottom-1,obj_solid,1,0)
{
    instance_destroy()
    exit
}

//Play a magical sound
audio_play_sound(snd_magic,0,0)

//Animate
image_speed = 0.2

//Make Mario invincible, invisible, disable his controls, and stop his speed
with obj_mario
{
    invincible = 1
    visible = 0
    disablecontrols = 1
    speed = 0
}

//Number of kills
hitpoint = 0

//Image angle
angle = 0

