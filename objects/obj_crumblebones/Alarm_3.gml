/// @description Turn into the appropriate enemy
if sprite_index = spr_bonybeetle_crumble
    instance_create(x,y,obj_bonybeetle)
else
    instance_create(x,y,obj_drybones)

//Destroy
instance_destroy()

