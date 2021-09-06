/// @description Enemies that can be carried around

//Uses the same variables as regular enemies
event_inherited()

//A collision object for Mario to ride
mytop = instance_create(x-8,y,obj_solidtop)

//Is this enemy heavy?
isheavy = 0

