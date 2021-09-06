/// @description Draw this fancy-pants snoke effect

//Draw stars
if starstop = 0
{
    draw_sprite(spr_spinstar,0,x+starx+8,y+8+stary)
    draw_sprite(spr_spinstar,0,x-starx+8,y+8+stary)
    draw_sprite(spr_spinstar,0,x+starx+8,y+8-stary)
    draw_sprite(spr_spinstar,0,x-starx+8,y+8-stary)
}

//Draw smoke
draw_sprite(spr_smoke,image_index,x,y)

