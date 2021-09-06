/// @description Draw a long pipe

//Draw pipe top
draw_sprite(sprite_index,0,x,y)

//Draw a stretch pipe bottom
draw_sprite_ext(sprite_index,1,x,y+16,1,room_height,0,c_white,1)

