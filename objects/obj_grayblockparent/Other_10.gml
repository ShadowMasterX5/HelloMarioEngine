/// @description Make the gray blocks break

//Play a break sound
audio_play_sound(snd_break,0,0)

//Create 4 gray shards
with instance_create(x+8,y,obj_shard)
{
    sprite_index = spr_shard_g
    direction = 45
}
with instance_create(x+8,y,obj_shard)
{
    sprite_index = spr_shard_g
    direction = 60
}
with instance_create(x,y,obj_shard)
{
    sprite_index = spr_shard_g
    direction = 120
}
with instance_create(x,y,obj_shard)
{
    sprite_index = spr_shard_g
    direction = 135
}

//Destroy
instance_destroy()

