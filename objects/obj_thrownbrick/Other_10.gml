/// @description Shatter

//Play break sound
if not outside_view()
    audio_play_sound(snd_break,0,0)

//Bomb brick explosion
if sprite_index = spr_bombbrick_th
    instance_create(x,y,obj_explosion)

//Make shards
with instance_create(x+8,y,obj_shard)
{
    sprite_index = spr_shard_th
    direction = 45
}
with instance_create(x+8,y,obj_shard)
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

