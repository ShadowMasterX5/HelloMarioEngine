/// @description Freeze enemies
if other.hardness < 2
{
    with other
    {
        with instance_create(round(x-sprite_xoffset),round(y-sprite_yoffset),obj_enemy_frozen)
        {
            sprite_index = other.sprite_index
            event_user(15)
        }
        audio_play_sound(snd_magic,0,0)
        instance_destroy()
    }
}

//Get killed
if other.hardness < 100
    event_user(0)

