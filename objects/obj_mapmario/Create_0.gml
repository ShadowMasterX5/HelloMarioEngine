/// @description Mario on the World Map!

//If Mario has been on the world map in the past
if ds_map_exists(global.worldmap,"returnx")
{

    //Load Mario's previous position
    x = ds_map_find_value(global.worldmap,"mapx")
    y = ds_map_find_value(global.worldmap,"mapy")

}

//If this is Mario's first time on the world map
else
{

    //Set the return variables to the current location
    ds_map_add(global.worldmap,"returnx",x)
    ds_map_add(global.worldmap,"returny",y)

}

//Load the return variables
returnx = ds_map_find_value(global.worldmap,"returnx")
returny = ds_map_find_value(global.worldmap,"returny")

//Recreate the card minigame panel if it was there previously
if ds_map_exists(global.worldmap,"cardgame")
    instance_create(ds_map_find_value(global.worldmap,"cardgamex"),ds_map_find_value(global.worldmap,"cardgamey"),obj_mapcard)

//Change Mario's sprite to the one corresponding with the current powerup
sprite_index = scr_mariomap()

//Sprite animation speed
image_speed = 0.15

//Mario's current state
ready = 0

//The text to be displayed on the HUD as the level name
mytext = ""

//Is the inventory open?
inventory = 0

//Which inventory irem is selected?
boxselection = 1

//Did Mario die before returning to the world map?
if global.died = 1
and global.clear = 0
{

    //If so, make him move to the return location
    move_towards_point(returnx,returny,1)

    //Play the spin sound
    alarm[4] = 1

    //Set the correct state for this action
    ready = 2

}

//Did Mario clear a level
else if global.clear > 0
{

    //If so, set the alarm that accounts for this
    alarm[2] = 30

    //Set the correct state for this action
    ready = 1

}

//Play music if none of the above actions occured
else
    alarm[3] = 1

//Reset all of these global variables
global.timer = 0
global.mariostart = 0
global.carrieditem = noone
global.carriedsprite = noone
global.shallihold = 0
global.pswitch = 0
global.star = 0
global.onoffblock = 0
global.died = 0

//Prevent shoes from being taken between levels
if global.yoshi = 2
    global.yoshi = 0

//Clear the records of collected ace coins
ds_map_clear(global.acecoins)

