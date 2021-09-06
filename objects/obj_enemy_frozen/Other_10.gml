/// @description Shatter

//Play sounds
audio_play_sound(snd_bump,0,0)
audio_play_sound(snd_shatter,0,0)

//Make shards
with instance_create(x,y,obj_shard)
{
    sprite_index = spr_shard_th
    direction = 45
}
with instance_create(x,y,obj_shard)
{
    sprite_index = spr_shard_th
    direction = 60
}
with instance_create(x,y,obj_shard)
{
    sprite_index = spr_shard_th
    direction = 120
}
with instance_create(x,y,obj_shard)
{
    sprite_index = spr_shard_th
    direction = 135
}

//Destroy
instance_destroy()

