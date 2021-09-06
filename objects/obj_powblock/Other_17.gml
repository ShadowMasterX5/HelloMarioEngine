/// @description Pull a POW block
instance_create(obj_mario.x,obj_mario.y+11,obj_pow)

//Make Mario hold it
obj_mario.holding = 1

//Destroy solid
with mysolid instance_destroy()

//Destroy
instance_destroy()

