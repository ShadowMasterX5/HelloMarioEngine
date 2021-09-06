/// @description Draw Mario entering a door

//Draw the inside of the door if the door is closing
if depth = 3
    draw_sprite(spr_door_inside,0,x-8,y+16)

//Draw the held item if it exists
if holding != 0
    draw_sprite(myitem,0,x-sprite_get_width(myitem)/2+sprite_get_xoffset(myitem),bbox_bottom-sprite_get_height(myitem)+sprite_get_yoffset(myitem))

//Draw Mario
draw_sprite(sprite_index,2,x,y)

