/// @description Bro logic

//Floor collisions if he is not jumping through
if throughsolid = 0
    event_user(4)

//Cap fall speed
else if vspeed > 4
    vspeed = 4

//Play thwomp sound when landing
if ready = 1
and gravity = 0
{
    audio_play_sound(snd_thwomp,0,0)
    ready = 0
}

//Face Mario
if instance_exists(obj_mario)
{
    if x > obj_mario.x
        direct = -1
    else
        direct = 1
}

