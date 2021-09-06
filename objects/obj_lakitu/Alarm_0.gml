/// @description Throw balls

//Throw when Mario is in its territory
if instance_number(obj_mario)
and obj_mario.x > xmin
and obj_mario.x < xmax
and instance_number(obj_spiny) < 6
    sprite_index = spr_lakitu_throw

//Throw more
alarm[0] = 150

