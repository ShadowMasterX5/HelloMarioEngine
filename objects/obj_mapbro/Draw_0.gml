/// @description Draw the bros
if direct = 1
    draw_sprite_ext(sprite_index,image_index,round(x),y,1,1,0,c_white,1)
else
    draw_sprite_ext(sprite_index,image_index,round(x)+16,y,-1,1,0,c_white,1)

