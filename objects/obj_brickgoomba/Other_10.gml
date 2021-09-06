/// @description Brick goomba death
with instance_create(round(x+4),round(y+8),obj_enemy_stomped) sprite_index = spr_microgoomba

//Breaking sound
audio_play_sound(snd_break,0,0)

//Make shards
with instance_create(x+8,y,obj_shard) direction = 45
with instance_create(x+8,y,obj_shard) direction = 60
with instance_create(x,y,obj_shard) direction = 120
with instance_create(x,y,obj_shard) direction = 135

//Destroy
instance_destroy()

