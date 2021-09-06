/// @description For after the level clear or death skid animations

//Reset the state
ready = 0

//If Mario cleared a level with a saver object on it, create the save menu
if global.clear > 0
and collision_point(x+8,y+8,obj_saver,1,1)
    instance_create(0,0,obj_savemenu)

//If the target score was reached for the card minigame to show up, and there is no card panel on the map
if score > global.cardscore
and not instance_exists(obj_mapcard)
{

    //Set a new target score
    global.cardscore += 80000

    //Place the minigame panel on the start panel if it needs to be created on Mario's current location
    if returnx = x
    and returny = y
        instance_create(obj_start.x,obj_start.y,obj_mapcard)

    //Otherwise, create it at the previously beaten level
    else
        instance_create(returnx,returny,obj_mapcard)

}

//Set the new return values
returnx = x
returny = y

//Save Mario's current location
ds_map_replace(global.worldmap,"mapx",x)
ds_map_replace(global.worldmap,"mapy",y)

//Save the return variables
ds_map_replace(global.worldmap,"returnx",returnx)
ds_map_replace(global.worldmap,"returny",returny)

//Reset the clear global variable
global.clear = 0

//Play the music
alarm[3] = 1

