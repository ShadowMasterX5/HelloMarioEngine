/// @description A flying chomp with a fiery tail

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 0

//Facing direction
direct = -1

//Do not animate
image_speed = 0

//Number of tail parts
mytails = 4

//Create tail parts
mytail[0] = instance_create(x+8,y,obj_firechomp_tail)
mytail[1] = instance_create(x+8,y,obj_firechomp_tail)
mytail[2] = instance_create(x+8,y,obj_firechomp_tail)
mytail[3] = instance_create(x+8,y,obj_firechomp_tail)

//Make them remember their parent
mytail[0].parent = id
mytail[1].parent = mytail[0]
mytail[2].parent = mytail[1]
mytail[3].parent = mytail[2]

//Go after Mario
alarm[0] = 2

