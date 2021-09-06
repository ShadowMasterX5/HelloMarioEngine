/// @description Retrieve item

//Ignore if small Mario's head will get stuck
if global.powerup = cs_small
and collision_rectangle(other.bbox_left,other.bbox_top-16,other.bbox_right,other.bbox_top,obj_solid,1,0)
    exit

//If a mushroom is being retrieved
if sprite_index = spr_mushroom
{

    //Become big if small
    if global.powerup = cs_small
        global.powerup = cs_big

    //Otherwise, reserve a mushroom
    else if global.reserveitem = cs_small
        global.reserveitem = cs_big

    //Just what Mario needed
    audio_play_sound(snd_jwin,0,0)

}

//Otherwise
else
{

    //If Mario is big, reserve a mushroom if nothing is reserved
    if global.powerup = cs_big
    and global.reserveitem = cs_small
        global.reserveitem = cs_big

    //Otherwise, if Mario has a powerup, put that in reserve
    else if global.powerup > cs_big
        global.reserveitem = global.powerup

    //Get the new powerup
    global.powerup = scr_sprite_get_constant(sprite_index)

    //Gotcha
    audio_play_sound(snd_gotcha,0,0)

}

//Play reserve item sound
audio_play_sound(snd_retrieve,0,0)

//Make Mario temporarily invincible
with other event_user(6)

//Destroy
instance_destroy()

