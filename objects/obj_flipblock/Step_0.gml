/// @description Check for Mario bonking his head on this block
event_inherited()

//Smash the block if Mario spin jumps on it
if ready = 0
and global.powerup != cs_small
and global.yoshi = 0
and instance_exists(obj_mario)
and obj_mario.stompstyle = 1
and obj_mario.vspeed > 0
and place_meeting(x,y-obj_mario.vspeed*2.5,obj_mario)
{
    with obj_mario event_user(1)
    audio_play_sound(snd_break,0,0)
    with instance_create(x+8,y,obj_shard)
    {
        sprite_index = spr_shard_y
        direction = 45
    }
    with instance_create(x+8,y,obj_shard)
    {
        sprite_index = spr_shard_y
        direction = 60
    }
    with instance_create(x,y,obj_shard)
    {
        sprite_index = spr_shard_y
        direction = 120
    }
    with instance_create(x,y,obj_shard)
    {
        sprite_index = spr_shard_y
        direction = 135
    }
    instance_destroy()
}

