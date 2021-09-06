/// @description An explosion of coins

//Play break sound
audio_play_sound(snd_break,0,0)

//Make shards
with instance_create(x+8,y,obj_shard) direction = 45
with instance_create(x+8,y,obj_shard) direction = 60
with instance_create(x,y,obj_shard) direction = 120
with instance_create(x,y,obj_shard) direction = 135

//Make an explosion of coins
instance_create(x,y-1,obj_multiveggiecoin)
with instance_create(x,y-1,obj_multiveggiecoin) hspeed = 1.5
with instance_create(x,y-1,obj_multiveggiecoin) hspeed = 0.75
with instance_create(x,y-1,obj_multiveggiecoin) hspeed = -0.75
with instance_create(x,y-1,obj_multiveggiecoin) hspeed = -1.5

//Destroy
instance_destroy()

