/// @description Draw the door

//Draw the inside of the door when needed
if image_index < 4
    draw_sprite(spr_door_inside,0,x,y)

//Draw the door on top
draw_sprite(sprite_index,image_index,x,y)

