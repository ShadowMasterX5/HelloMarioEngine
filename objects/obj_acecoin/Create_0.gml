/// @description Collect 5 and receive a 1up

//Animate
image_speed = 0.15

//Destroy if this coin was already collected
if ds_map_exists(global.acecoins,id)
    instance_destroy()

