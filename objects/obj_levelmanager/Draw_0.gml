/// @description Draw the HUD

//Set the font
draw_set_font(global.wdigits)

//Set the draw alpha
draw_set_alpha(0.7)

//Draw the HUD bar
draw_sprite_ext(spr_hudbar,0,__view_get( e__VW.XView, 0 )+36,__view_get( e__VW.YView, 0 )+1,1,1,0,c_white,0.7)

//Draw the lives
draw_sprite_ext(spr_mariohud,0,__view_get( e__VW.XView, 0 )+90,__view_get( e__VW.YView, 0 )+10,1,1,0,c_white,0.7)
draw_text(__view_get( e__VW.XView, 0 )+114,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string_format(lives,2,0)))

//Draw the score
draw_text(__view_get( e__VW.XView, 0 )+286,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string_add_zeros(score,7)))

//Draw the coin count
draw_sprite_ext(spr_coinhud,0,__view_get( e__VW.XView, 0 )+226,__view_get( e__VW.YView, 0 )+10,1,1,0,c_white,0.7)
draw_text(__view_get( e__VW.XView, 0 )+233,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string_add_zeros(global.coins,2)))

//Draw the world number
draw_sprite_ext(spr_worldhud,0,__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+10,1,1,0,c_white,0.7)
draw_sprite_ext(spr_numbersgold,global.world,__view_get( e__VW.XView, 0 )+74,__view_get( e__VW.YView, 0 )+10,1,1,0,c_white,0.7)

//Change the font
draw_set_font(global.gdigits)

//Draw the time
draw_sprite_ext(spr_timehud,0,__view_get( e__VW.XView, 0 )+136,__view_get( e__VW.YView, 0 )+10,1,1,0,c_white,0.7)
draw_text(__view_get( e__VW.XView, 0 )+146,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string_add_zeros(global.timer,3)))

//Draw the P-Meter
draw_sprite_ext(spr_pmeter,pmeter,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+204,1,1,0,c_white,0.7)

//Draw the reserve items
if global.reserveitem = cs_fire
or global.reserveitem = cs_ice
    draw_sprite_ext(scr_constant_get_sprite(global.reserveitem),anim,__view_get( e__VW.XView, 0 )+184,__view_get( e__VW.YView, 0 )+7,1,1,0,c_white,0.7)
else if global.reserveitem != cs_small
    draw_sprite_ext(scr_constant_get_sprite(global.reserveitem),0,__view_get( e__VW.XView, 0 )+184,__view_get( e__VW.YView, 0 )+7,1,1,0,c_white,0.7)

//Reset the draw alpha
draw_set_alpha(1)

