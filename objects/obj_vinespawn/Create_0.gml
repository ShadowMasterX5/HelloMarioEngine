/// @description Make Mario enter the room using a vine

//Animate
image_speed = 0.15

//Climbing sprite
sprite_index = scr_marioclimb()

//Start at the bottom of the level
y = room_height

//Create a beanstalk
instance_create(x-8,y,obj_beanstalk)

//Start climbing later
alarm[0] = 128

