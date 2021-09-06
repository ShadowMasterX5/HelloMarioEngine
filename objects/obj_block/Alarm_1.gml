/// @description Finish block bump
vspeed = 0
y = ystart

//Change the contents to mushroom if a powerup is inside, and Mario is small
if sprout > cs_big
and global.powerup = cs_small
    sprout = cs_big

//Make an item come out, if there is one
if sprout != cs_coin
    with instance_create(x,y,obj_powerupsprout) sprite_index = scr_constant_get_sprite(other.sprout)

//Use the empty block sprite
sprite_index = spr_qblock_empty

