/// @description Finish block bump
vspeed = 0
y = ystart

//For all three items
for(var i = 0; i < 3; i++)
{

    //Change the contents to mushroom if a powerup is inside, and Mario is small
    if sprout[i] > cs_big
    and global.powerup = cs_small
        sprout[i] = cs_big

    //Make an item come out, if there is one
    if sprout[i] != cs_coin
        with instance_create(x+i*16,y,obj_powerupsprout) sprite_index = scr_constant_get_sprite(other.sprout[i])
}

//Make the block look empty
image_index = 1

