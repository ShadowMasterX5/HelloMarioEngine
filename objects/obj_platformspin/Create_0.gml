/// @description Spinning platform

//Create solidtop
myspin = instance_create(x,y,obj_solidtop)
myspin.mask_index = spr_spinmask

//Do not animate
image_speed = 0

//Start animating
alarm[0] = 100

//Number of times to spin
spintimes = 9

