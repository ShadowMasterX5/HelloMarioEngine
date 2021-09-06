/// @description Draw Chain Chomp

//Draw chains
draw_sprite(spr_chain,0,xstart,ystart)
draw_sprite(spr_chain,0,(xstart+(x+xstart)/2)/2,(ystart+(y+ystart)/2)/2)
draw_sprite(spr_chain,0,(x+xstart)/2,(y+ystart)/2)
draw_sprite(spr_chain,0,(x+(x+xstart)/2)/2,(y+(y+ystart)/2)/2)

//Draw head
draw_sprite_ext(sprite_index,image_index,round(x)+8-8*direct,y,direct,1,0,c_white,1)

