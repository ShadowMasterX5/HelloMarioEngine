/// @description Pull a stackable block
instance_create(obj_mario.x,obj_mario.y+11,obj_mblockup)

//Make Mario hold it
obj_mario.holding = 1

//Destroy solid
with mysolid instance_destroy()

//Destroy
instance_destroy()

