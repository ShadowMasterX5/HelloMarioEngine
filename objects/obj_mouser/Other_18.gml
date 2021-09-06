/// @description Mouser death
with instance_create(round(x),round(y+sprite_height),obj_enemy_dead)
{
    sprite_index = spr_mouser_hurt
    image_xscale = other.direct
}

//Play magic sound
audio_play_sound(snd_magic,0,0)

//Destroy projectiles
with obj_mouser_thrownbomb
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}
with obj_mouser_bomb
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}

