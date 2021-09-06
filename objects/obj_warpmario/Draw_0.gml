/// @description Draws Mario

//Draw item when Mario is moving horizontally
if holding != 0
and hspeed != 0
    draw_sprite(myitem,0,x-sprite_get_width(myitem)/2+sprite_get_xoffset(myitem)+10*direct,bbox_bottom-sprite_get_height(myitem)+sprite_get_yoffset(myitem)-1)

//Make Mario flash
if isflashing = 1
    shader_set(sha_invert)

//Draw Mario
draw_sprite_ext(sprite_index,image_index,round(x),y,direct,1,0,c_white,1)

//Reset flashing
if isflashing = 1
    shader_reset()

//Draw item when Mario is moving vertically
if holding != 0
and hspeed = 0
    draw_sprite(myitem,0,x-sprite_get_width(myitem)/2+sprite_get_xoffset(myitem),bbox_bottom-sprite_get_height(myitem)+sprite_get_yoffset(myitem))

