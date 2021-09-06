/// @description Get picked up as a frozen enemy
with instance_create(obj_mario.x,obj_mario.y+11,obj_frozenenemy_pickup) sprite_index = other.sprite_index

//Make Mario hold it
obj_mario.holding = 1

//Destroy
instance_destroy()

