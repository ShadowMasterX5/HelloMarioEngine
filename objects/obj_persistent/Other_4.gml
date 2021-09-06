/// @description Fade the screen to black, unless you just opened up the game
if mode = 1
    event_user(0)

//Set up on screen controls
if os_type = os_android or os_type = os_ios
    event_user(2)

