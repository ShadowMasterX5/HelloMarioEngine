/// @description Draws Mario

//Make Mario flash
if isflashing = 1
    shader_set(sha_invert)

//Draw Mario
draw_sprite_ext(sprite_index,image_index,round(x),y,direct,1,0,c_white,image_alpha)

//Reset flashing
if isflashing = 1
    shader_reset()

