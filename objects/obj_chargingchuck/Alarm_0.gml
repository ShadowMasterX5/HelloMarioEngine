/// @description Take a breather and look around

//If he is jumping, wait
if sprite_index = spr_chargingchuck_jump
    alarm[0] = 1

//Otherwise
else
{

    //Reset state
    ready = 0

    //Reset hardness
    hardness = 0

    //Start running later
    alarm[10] = 60

    //Slower animation speed
    image_speed = 0.1

    //Stop moving
    hspeed = 0

    //Paused sprite
    sprite_index = spr_chargingchuck_paused

}

