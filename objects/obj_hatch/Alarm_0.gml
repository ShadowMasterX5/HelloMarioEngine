/// @description Make egg shards
with instance_create(x+8,y,obj_shard)
{
    direction = 45
    sprite_index = spr_eggbits
    image_index = 1
}
with instance_create(x,y,obj_shard)
{
    direction = 135
    sprite_index = spr_eggbits
    image_index = 0
}
with instance_create(x,y,obj_shard)
{
    direction = 225
    sprite_index = spr_eggbits
    image_index = 3
}
with instance_create(x+8,y,obj_shard)
{
    direction = 315
    sprite_index = spr_eggbits
    image_index = 2
}

