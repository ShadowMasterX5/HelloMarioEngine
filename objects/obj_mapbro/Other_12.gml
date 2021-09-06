/// @description Destroy animation
if obj_mapmario.x = xstart
and obj_mapmario.y = ystart
{

    //Play a magical sound
    audio_play_sound(snd_magic,0,0)

    //Make smoke
    instance_create(x,y,obj_smoke)

    //Remember that this battle is done
    ds_map_add(global.worldmap,string(id),1)

    //Bye bye!
    instance_destroy()

}

