/// @description Finish hatching

//Change sprite to lick sprite
if sprite_index = spr_hatch
    sprite_index = spr_yoshi_lick
else if sprite_index = spr_hatch_r
    sprite_index = spr_yoshi_lick_r
else if sprite_index = spr_hatch_y
    sprite_index = spr_yoshi_lick_y
else if sprite_index = spr_hatch_b
    sprite_index = spr_yoshi_lick_b

//Stop animating
image_speed = 0

//Change mask
mask_index = spr_smallmask

//Change position
x+=8
y-=16

//Become an abandoned Yoshi
alarm[1] = 10

