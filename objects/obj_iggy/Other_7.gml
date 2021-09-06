/// @description Fire projectiles
if sprite_index = spr_iggy_attack
{

    //Reset sprite
    sprite_index = spr_iggy

    //Create projectiles
    with instance_create(x-4+10*direct,y,obj_magiccircle) event_user(0)

    //Play a magical sound
    audio_play_sound(snd_magic,0,0)

}

