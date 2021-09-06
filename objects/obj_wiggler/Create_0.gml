/// @description Everyone's favorite caterpillar

//How vulnerable is this enemy to various items?
hardness = 2

//How vulnerable is this enemy to Mario?
stomp = 5

//Facing direction
direct = -1

//Start walking towards Mario
alarm[10] = 2

//Animate
image_speed = 0.15

//Not angry
ready = 0

//Previous horizontal speed
prevhspeed = 0

//Body parts
mybody[0] = instance_create(x,y,obj_wiggler_body)
mybody[1] = instance_create(x,y,obj_wiggler_body)
mybody[2] = instance_create(x,y,obj_wiggler_body)
mybody[3] = instance_create(x,y,obj_wiggler_body)

//Let the body know who's their owner
mybody[0].parent = id
mybody[1].parent = id
mybody[2].parent = id
mybody[3].parent = id

//Offset values
mybody[0].offset = 10
mybody[1].offset = 18
mybody[2].offset = 26
mybody[3].offset = 34

//Animation stuff
mybody[1].image_index = 1
mybody[2].image_index = 2
mybody[3].image_index = 1

//Depth
mybody[0].depth = 1
mybody[1].depth = 2
mybody[2].depth = 3
mybody[3].depth = 4

