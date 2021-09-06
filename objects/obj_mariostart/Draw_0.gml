/// @description Draw the Mario Start! screen

//Draw black in the back
draw_clear(c_black)

//Draw the text
draw_sprite(spr_mariostart,0,__view_get( e__VW.XView, 0 )+192,__view_get( e__VW.YView, 0 )+108)

