/// @description Chest selection

//If no chest is open and Mario is above this one
if obj_mushtoad.ready = 0
and place_meeting(x,y,obj_mario)
{

    //Open the chest visually
    image_index = 1

    //Let Toad know that a chest was opened
    obj_mushtoad.ready = 1

    //Tell Toad to kick Mario out
    obj_mushtoad.alarm[1] = 200

    //Stop the music before getting kicked out
    obj_levelmanager.alarm[1] = 199

    //Get the powerup
    powerup = instance_create(x+8,y,obj_getpowerup)
    powerup.sprite_index = scr_constant_get_sprite(global.prize[type])

}

