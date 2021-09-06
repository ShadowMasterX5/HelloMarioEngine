/// @description Obtain powerup

//If it is a life, get it right away
if sprite_index = spr_1up
    with obj_mario instance_create(x-8,y+16,obj_1up)
else if sprite_index = spr_3upmoon
    with obj_mario instance_create(x-8,y+16,obj_3upmoon)

//Otherwise
else
{

    //Increment the size of the inventory if it is not full
    if global.inventory[0] < 15
        global.inventory[0]++

    //Add powerup to the inventory
    global.inventory[global.inventory[0]] = scr_sprite_get_constant(sprite_index)

    //Create an inventory preview
    instance_create(-16,0,obj_inventoryprev)

}

//Clear level
global.clear = 1

//Create smoke
instance_create(x,y,obj_smoke)

//Destroy
instance_destroy()

