/// @description Switch press animation
if image_index = 0
{

    //Press the switch
    image_index = 1

    //Lock Mario out
    ready = 1

    //Make the sound of castles being smashed
    audio_play_sound(snd_castlebreak,0,0)

    //Make some spectacular smoke
    with instance_create(x,y,obj_smoke) sprite_index = spr_castlesmoke

    //Remember that it was pressed
    ds_map_add(global.worldmap,string(id),1)

}

