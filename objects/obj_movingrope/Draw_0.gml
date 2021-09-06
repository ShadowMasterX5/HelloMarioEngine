/// @description Draw Moving Rope
draw_sprite(spr_movingrope,0,x,y)

//Draw rope
for(var i = 1; i <= ropelength; i++)
{
    if i = ropelength
        draw_sprite(spr_movingrope,2,x,y+i*16)
    else
        draw_sprite(spr_movingrope,1,x,y+i*16)
}

