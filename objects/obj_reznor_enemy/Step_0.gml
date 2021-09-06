/// @description Reznor logic

//If the platform it is riding gets offset
if myplatform.offset > 0
{

    //Play kick sound
    audio_play_sound(snd_kick,0,0)

    //End the boss if this is the last reznor
    if instance_number(obj_reznor_enemy) = 1
    {
        audio_play_sound(snd_magic,0,0)
        event_user(6)
    }

    //Die
    event_user(0)

}

//Face Mario
if image_index != 0
and instance_exists(obj_mario)
{
    if obj_mario.x > x
        direct = 1
    else
        direct = -1
}

