/// @description Prepeare to enter into view

//Snap to the side of the screen that it is closest to
if obj_levelmanager.x > (xmax-xmin)/2+xmin
    x = __view_get( e__VW.XView, 0 )-64
else
    x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64

//Make visible
visible = 1

