/// @description Fire projectiles
if sprite_index = spr_lemmy_attack
{

    //Reset sprite
    sprite_index = spr_lemmy

    //Create projectiles
    with instance_create(x-8+10*direct,y,obj_magicball) hspeed = 2*other.direct

    //Play a magical sound
    audio_play_sound(snd_magic,0,0)

}

