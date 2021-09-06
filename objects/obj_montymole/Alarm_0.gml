/// @description Break out of the ground

//Break sound
audio_play_sound(snd_break,0,0)

//Make shards
with instance_create(x+8,y,obj_shard)
{
    direction = 45
    sprite_index = spr_shard_m
}
with instance_create(x,y,obj_shard)
{
    direction = 135
    sprite_index = spr_shard_m
}
with instance_create(x,y,obj_shard)
{
    direction = 225
    sprite_index = spr_shard_m
}
with instance_create(x+8,y,obj_shard)
{
    direction = 315
    sprite_index = spr_shard_m
}

//If the floor dirt sprite is used, make monty mole lower, and destroy
if sprite_index = spr_montymole_dirt2
{
    instance_create(x,y+16,obj_montyjump)
    instance_destroy()

}

//Otherwise, make a monty mole and leave a hole
else
{
    instance_create(x,y,obj_montyjump)
    sprite_index = spr_montymole_jump
    image_speed = 0
    image_index = 1
}

