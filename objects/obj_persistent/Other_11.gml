/// @description Set up the screen to be displayed

//Temporary variable
var s

//Normal
if filter = 0
    s = 1

//HQ2X
else if filter = 1
    s = 2

//HQ4X
else if filter = 2
    s = 4

//Reset display
display_reset(0,vsync)

//Set up the window
window_set_size(__view_get( e__VW.WView, 0 )*s,__view_get( e__VW.HView, 0 )*s)

//Set up the display
display_set_gui_size(__view_get( e__VW.WView, 0 )*s,__view_get( e__VW.HView, 0 )*s)

//Center the window
alarm[2] = 1

//Reset mobile controls
if os_type = os_android or os_type = os_ios
{
    event_user(3)
    event_user(2)
}

