/// @description Get in the shoe
if obj_mario.holding = 0
and obj_mario.visible = 1
{

    //Snap position
    obj_mario.x = x+8
    obj_mario.y = y-16

    //Force him to hold shoe
    obj_mario.holding = 3

    //Remember the correct shoe color
    if sprite_index = spr_kuriboshoe
        global.ycolor = 0
    else if sprite_index = spr_baburushoe
        global.ycolor = 1
    else if sprite_index = spr_dossunshoe
        global.ycolor = 2
    else if sprite_index = spr_jugemushoe
        global.ycolor = 3

    //Play a magical sound
    audio_play_sound(snd_magic,0,0)

    //Make a shoe
    instance_create(x,y,obj_kuriboshoe)

    //Make smoke effects
    instance_create(x+8,y,obj_statuesmoke)

    //Destroy
    instance_destroy()

}

