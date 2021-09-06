/// @description Ride Yoshi

//If Mario jumps on the Yoshi
if other.vspeed > 0
and other.holding = 0
and other.visible = 1
{

    //Snap position
    other.x = x
    other.y = y

    //Force him to hold Yoshi
    other.holding = 3

    //Remember the correct Yoshi color
    if sprite_index = spr_yoshi_walk
        global.ycolor = 0
    else if sprite_index = spr_yoshi_walk_r
        global.ycolor = 1
    else if sprite_index = spr_yoshi_walk_y
        global.ycolor = 2
    else if sprite_index = spr_yoshi_walk_b
        global.ycolor = 3

    //Make a Yoshi
    instance_create(x,y,obj_yoshi)

    //Make Yoshi sounds
    audio_play_sound(snd_yoshi,0,0)

    //Yoshi is happy
    audio_play_sound(snd_yoshi_happy,0,0)

    //Destroy
    instance_destroy()

}

