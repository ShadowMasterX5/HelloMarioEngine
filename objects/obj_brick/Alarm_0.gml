/// @description Smash the brick
audio_play_sound(snd_break,0,0)
with instance_create(x+8,y,obj_shard) direction = 45
with instance_create(x+8,y,obj_shard) direction = 60
with instance_create(x,y,obj_shard) direction = 120
with instance_create(x,y,obj_shard) direction = 135
instance_destroy()

