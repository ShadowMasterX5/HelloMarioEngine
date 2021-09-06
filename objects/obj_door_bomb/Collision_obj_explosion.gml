/// @description If this door is blown up
if other.object_index = obj_explosion
{

    //Make a breaking sound
    audio_play_sound(snd_break,0,0)

    //Create some shards
    with instance_create(x,y,obj_shard) direction = 45
    with instance_create(x,y,obj_shard) direction = 60
    with instance_create(x,y,obj_shard) direction = 120
    with instance_create(x,y,obj_shard) direction = 135

    //Make a normal door
    instance_create(x,y,obj_door)

    //Destroy the boarded up door
    instance_destroy()

}

