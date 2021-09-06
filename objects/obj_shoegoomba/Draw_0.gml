/// @description Draw the shoe goomba
draw_sprite_ext(spr_kuriboshoe,secanim,round(x)+8-8*direct,y,direct,1,0,c_white,1)

//Draw the goomba head
if ready = 1
    draw_sprite_ext(spr_kuribohead,image_index,round(x)+8,y-8,direct,1,0,c_white,1)

