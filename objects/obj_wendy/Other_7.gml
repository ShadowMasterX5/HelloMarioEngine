/// @description Fire projectiles
if sprite_index = spr_wendy_attack
{

    //Reset sprite
    sprite_index = spr_wendy

    //Create projectiles
    with instance_create(x-8+10*direct,y,obj_magicring) hspeed = 2*other.direct

    //Play a magical sound
    audio_play_sound(snd_magic,0,0)

}

