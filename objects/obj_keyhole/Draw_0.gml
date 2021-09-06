/// @description Draw the keyhole and animation

//Draw the keyhole
if ready < 2
    draw_sprite(spr_keyhole,0,x,y)

//If the animation has started
if ready != 0
{

    //Draw the animation
    draw_sprite_ext(spr_keyhole_animation,0,x+8,y+16,scale,scale,0,c_white,1)

    //Draw Mario and the key during the animation
    if ready = 1
    or ready = 2
    {
        draw_sprite_ext(spr_key,0,kx+8-8*kd,ky,kd,1,0,c_white,fade)
        draw_sprite_ext(ms,mi,mx,my,md,1,0,c_white,fade)
    }

}

