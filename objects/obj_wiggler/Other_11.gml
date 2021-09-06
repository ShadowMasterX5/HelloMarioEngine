/// @description Wiggler stomp

//Play stomp sound if wiggler is angry
if ready = 1
    audio_play_sound(snd_stomp,0,0)

//Otherwise
else
{

    //Musical scale
    scr_musicalscale(obj_mario.id,id,1)

    //Kill flower
    with instance_create(x-4*direct,y+16,obj_enemy_dead) sprite_index = spr_wiggler_flower

    //Make angry
    ready = 1
    sprite_index = spr_wiggler_mad
    image_speed = 0.3
    hspeed = hspeed*2

    //Make body parts angry
    for(var i = 0; i < 4; i++)
    {
        with mybody[i]
        {
            ready = 1
            sprite_index = spr_wiggler_madbody
            image_speed = 0.3
            hspeed = hspeed*2
        }
    }

    //Go after Mario
    alarm[0] = 50

}

