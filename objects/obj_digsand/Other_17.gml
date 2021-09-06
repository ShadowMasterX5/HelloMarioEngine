/// @description Dig the sand
with instance_create(x,y,obj_smoke) sprite_index = spr_digsand

//Destroy solidtop
with mytop instance_destroy()

//Destroy
instance_destroy()

