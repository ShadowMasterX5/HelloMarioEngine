/// @description Get picked up as a bomb
with instance_create(obj_mario.x,obj_mario.y+11,obj_bombguyup) image_xscale = other.direct

//Make Mario hold it
obj_mario.holding = 1

//Destroy
instance_destroy()

