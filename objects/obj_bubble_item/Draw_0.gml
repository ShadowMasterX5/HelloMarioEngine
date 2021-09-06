/// @description Draw the bubble
if item != -1
{

    //Do not draw these items animated
    if sprite = spr_leaf
    or sprite = spr_key
    or sprite = spr_spring
    or sprite = spr_spring_super
    or sprite = spr_eswitch
    or sprite = spr_hatch
    or sprite = spr_hatch_r
    or sprite = spr_hatch_y
    or sprite = spr_hatch_b
        draw_sprite(sprite,0,x+8,y+8)

    //Otherwise, draw the item animated
    else
        draw_sprite(sprite,image_index,x+8,y+8)

}

//Draw the bubble
draw_sprite(sprite_index,image_index,x,y)

