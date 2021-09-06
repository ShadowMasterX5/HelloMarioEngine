/// @description Giant spike logic

///Slam into the ground
if ready = 1
and position_meeting(x,y,obj_solidtop)
{
    vspeed = 0
    y = collision_point(x,y,obj_solidtop,0,0).y
    audio_play_sound(snd_thwomp,0,0)
    ready = 2
    alarm[3] = 60
}

//Stop moving and restart animation after returning to its original position
else if ready = 2
and y < ystart+1
{
    ready = 0
    alarm[0] = 100
    vspeed = 0
    y = ystart
}

