/// @description Make podoboo effects and sounds
if not outside_view()
{
    audio_play_sound(snd_podoboo,0,0)
    with instance_create(x,y-4,obj_smoke) sprite_index = spr_lavasplash
}

