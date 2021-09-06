/// @description A snake made of fire

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 2

//Facing direction
direct = -1

//Animate
image_speed = 0.15

//Jump
alarm[0] = 100

//Make tail parts
mypart[0] = instance_create(x,y,obj_firesnake_part)
mypart[1] = instance_create(x,y,obj_firesnake_part)
mypart[2] = instance_create(x,y,obj_firesnake_part)
mypart[3] = instance_create(x,y,obj_firesnake_part)

