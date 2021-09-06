/// @description Draw Ceiling Spiny
if ready = 0
    draw_sprite_ext(sprite_index,image_index,round(x),round(y)+16,direct,-1,0,c_white,1)
else
    draw_sprite(sprite_index,image_index,x-8,y)

