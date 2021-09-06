/// @description The card minigame

//Start at the left and move right 1 block
hspeed = 0.5
x -= 8
alarm[0] = 32

//Figure out the state of this game
if ds_map_exists(global.worldmap,"cardgame")
    ready = ds_map_find_value(global.worldmap,"cardgame")
else
    ready = 0

//If this panel is new
if ready = 0
{

    //Remember that it exists
    ds_map_replace(global.worldmap,"cardgame",1)

    //Remember this panel's coordinates
    ds_map_replace(global.worldmap,"cardgamex",xstart)
    ds_map_replace(global.worldmap,"cardgamey",y)

    //Allow Mario in
    ready = 1

    //Make a magical sound
    audio_play_sound(snd_magic,0,0)

    //Make smoke
    instance_create(x,y,obj_smoke)

}

//If this panel is ready to be destroyed
else if ready = 2
{

    //Remember that it is gone
    ds_map_delete(global.worldmap,"cardgame")

    //Destroy it after a bit
    alarm[2] = 30

}


