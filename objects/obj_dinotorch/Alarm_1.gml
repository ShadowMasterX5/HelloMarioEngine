/// @description Finish blowing fire

//Destroy fire
with myflames instance_destroy()

//Continue walking
hspeed = direct/2

//Normal sprite
sprite_index = spr_dinotorch

//Animate
image_speed = 0.15

//Spew fire again later
alarm[0] = 200

