/// @description Make extra large vegetable
instance_create(obj_mario.x-8,obj_mario.y-5,obj_vegetable_large)

//Make Mario hold it
obj_mario.holding = 1

//Play break sound
audio_play_sound(snd_break,0,0)

//Make shards
with instance_create(x+8,y,obj_shard) direction = 45
with instance_create(x+8,y,obj_shard) direction = 60
with instance_create(x,y,obj_shard) direction = 120
with instance_create(x,y,obj_shard) direction = 135

//Destroy
instance_destroy()

