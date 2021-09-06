/// @description Prepare for special sliding

//If Mario is in a penguin suit
if global.powerup = cs_penguin
{

    //Use penguin sliding
    type = 2

    //Use penguin swim sprite
    sprite_index = spr_mario_penguin_swim

}
else
{

    //Use shell sliding
    type = 1

    //Use shell ducking sprite
    sprite_index = spr_mario_shell_ducking

}

//Animate
image_speed = 0.3

//Force Mario to duck
obj_mario.isduck = 1

//Change animation
alarm[1] = 6

