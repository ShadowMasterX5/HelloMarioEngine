/// @description Draw Spiketop
if dir = 0
    draw_sprite_ext(sprite_index,image_index,round(x),y,direct,1,0,c_white,1)
else if dir = 1
    draw_sprite_ext(sprite_index,image_index,round(x)-8,round(y)+8,direct,1,90,c_white,1)
else if dir = 2
    draw_sprite_ext(sprite_index,image_index,round(x),round(y)+15,direct,1,180,c_white,1)
else if dir = 3
    draw_sprite_ext(sprite_index,image_index,round(x)+7,round(y)+8,direct,1,270,c_white,1)

