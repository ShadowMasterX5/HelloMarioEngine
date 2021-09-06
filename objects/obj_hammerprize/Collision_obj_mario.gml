/// @description Open the prize chest

//If the prize appeared
if ready = 1
{

    //Return to the world map later
    alarm[0] = 200

    //Make the chest dissapear in a bit
    alarm[1] = 50

    //Stop the music before returning to the world map
    obj_levelmanager.alarm[1] = 199

    //Chest is empty
    ready = 2

    //Open chest
    image_index = 1

    //Receive prize
    with instance_create(x,y,obj_getpowerup) sprite_index = scr_constant_get_sprite(global.prize[0])

}

