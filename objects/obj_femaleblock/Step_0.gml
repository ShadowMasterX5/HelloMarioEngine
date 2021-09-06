/// @description Shatter when touched by females

//Super crown Mario
if (global.powerup = cs_crown
and instance_exists(obj_mario)
and place_meeting(x-obj_mario.hspeed*2.5,y-obj_mario.vspeed*2.5,obj_mario))

//Wendy, the only female enemy currently
or (instance_exists(obj_wendy)
and place_meeting(x-obj_wendy.hspeed*2.5,y-obj_wendy.vspeed*2.5,obj_wendy))
{
    audio_play_sound(snd_bump,0,0)
    event_user(0)
}

