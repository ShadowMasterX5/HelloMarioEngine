/// @description Make parts

//Snap to grid
move_snap(16,16)

//Make part
instance_create(x,y,obj_blocktrain_middle)

//Make the back of the train snap and make a killer
with myback
{
    move_snap(16,16)
    instance_create(x,y,obj_blocktrain_killer)
}

//Make noise
if not outside_view()
    audio_play_sound(snd_engine,0,0)

//Keep making parts
if speed != 0
    alarm[0] = 15/speed

