/// @description A deadly stomp on the ground

//Create a left moving smoke
with instance_create(x-16,y,obj_smoke)
{
    hspeed = -1
    depth = -6
}

//Create a right moving smoke
with instance_create(x,y,obj_smoke)
{
    hspeed = 1
    depth = -6
}

//Play a special stomp sound
audio_play_sound(snd_stomp2,0,0)

//Animate
image_speed = 0.5

//Number of kills
hitpoint = 0

