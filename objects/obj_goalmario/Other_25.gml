/// @description Begin countdown state

//Start the countdown if there is a time limit
if global.timer > 0
    alarm[2] = 1
else
    alarm[3] = 1

//Do not animate
image_speed = 0

//Use the correct image index
image_index = 0

