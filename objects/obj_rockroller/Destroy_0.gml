/// @description End roll

//With Mario
with obj_mario
{

    //If controls are disabled
    if disablecontrols = 1
    {

        //Break sound
        audio_play_sound(snd_break,0,0)

        //Create 4 gray shards
        with instance_create(x,y,obj_shard)
        {
            sprite_index = spr_shard_rock
            direction = 45
        }
        with instance_create(x,y-16,obj_shard)
        {
            sprite_index = spr_shard_rock
            direction = 60
        }
        with instance_create(x-16,y-16,obj_shard)
        {
            sprite_index = spr_shard_rock
            direction = 120
        }
        with instance_create(x-16,y,obj_shard)
        {
            sprite_index = spr_shard_rock
            direction = 135
        }

        //Stop the invincibility
        invincible = 0

        //Become visible
        visible = 1

        //Enable controls
        disablecontrols = 0

    }

}

