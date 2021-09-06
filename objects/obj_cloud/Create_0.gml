/// @description Clouds to stand on

//Animate
image_speed = 0.3

//Create smoke
instance_create(x+16,y,obj_smoke)

//This is the nth cloud (Set by Mario)
num = 0

//Destroy after 6 seconds
alarm[0] = 360

//Alpha blink
alarm[1] = 260

