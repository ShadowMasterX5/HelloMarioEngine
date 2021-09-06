/// @description A plant that likes balls

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 1

//Do not animate
image_speed = 0

//Make plant ball
myball = instance_create(x-8,y-16,obj_plantball)

//Let the ball know who owns is
myball.parent = id

