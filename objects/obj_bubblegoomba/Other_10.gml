/// @description Pop

//Play pop sound
audio_play_sound(snd_pop,0,0)

//Make a goomba moving in the same horizontal direction
with instance_create(x+8,y+8,obj_goomba)
{
    if other.hspeed < 0
        hspeed = -0.5
    else
        hspeed = 0.5
}

//Destroy
instance_destroy()

