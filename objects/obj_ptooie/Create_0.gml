/// @description A walking plant that likes balls

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 1

//Animate
image_speed = 0.15

//Make plant ball
myball = instance_create(x,y-7,obj_plantball)

//Let the ball know who owns is
myball.parent = id

//Start walking right
hspeed = 0.5

//Turn around later
alarm[0] = 150

