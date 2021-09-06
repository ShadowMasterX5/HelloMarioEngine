/// @description A secret flagpole! Unlocks a secret path on the world map.

//Make a secret flag
flag = instance_create(x+10,y+17,obj_flag)
flag.sprite_index = spr_flag_secret

//Display the secret flagpole
image_speed = 0
image_index = 1

