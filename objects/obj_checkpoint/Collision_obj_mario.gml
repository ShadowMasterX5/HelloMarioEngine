/// @description Lets Mario activate the checkpoint

//If it still has a bowser flag
if sprite_index = spr_flag_bowser
{

    //Deactivate other checkpoints
    with obj_checkpoint sprite_index = spr_flag_bowser

    //Switch to the Mario flag
    sprite_index = spr_flag_mario

    //Remember the checkpoint id and room
    global.checkpoint = id
    global.checkpointroom = room

    //Play the whistle sound
    audio_play_sound(snd_whistle,0,0)

    //Give Mario a mushroom if he is small, otherwise, make him talk
    if global.powerup = cs_small
        instance_create(other.x,other.y+16,obj_mushroom)
    else
        audio_play_sound(snd_gotcha,0,0)

    //Special effects
    instance_create(x+18,y+24,obj_spinthump)

}

