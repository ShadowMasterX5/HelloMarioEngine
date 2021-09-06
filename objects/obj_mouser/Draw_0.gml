/// @description Draw Mouser
if sprite_index = spr_mouser
and image_index = 0
and hardness = 2
{
    draw_sprite_ext(sprite_index,anim,round(x),y,direct,1,0,c_white,1)
    draw_sprite(spr_grassbomb,0,x-8-8*direct,y)
}
else
    draw_sprite_ext(sprite_index,image_index,round(x),y,direct,1,0,c_white,1)

