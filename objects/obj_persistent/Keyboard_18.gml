/// @description Handle all of the hotkeys

//Quit the game when ALT+F4 is pressed
if keyboard_check_pressed(vk_f4)
    game_end()

//Restart the game when ALT+R is pressed
else if keyboard_check_pressed(ord("R"))
{
    audio_stop_all()
    scr_init_globals()
    room_goto(rm_title)
}

//Fullscreen (Handled by GM: Studio)
else if keyboard_check_pressed(vk_enter)
{
    fullscreen = !fullscreen
    if fullscreen
        message = "FULLSCREEN ON"
    else
        message = "FULLSCREEN OFF"
    event_user(1)
}

//Toggles VSync
else if keyboard_check_pressed(ord("V"))
{
    vsync = !vsync
    if vsync
        message = "VSYNC ON"
    else
        message = "VSYNC OFF"
    event_user(1)
}

//Toggles Gamepad
else if keyboard_check_pressed(ord("G"))
{
    gamepad = !gamepad
    if gamepad
        message = "GAMEPAD ON"
    else
        message = "GAMEPAD OFF"
    event_user(1)
}

//Toggle FPS display
else if keyboard_check_pressed(ord("F"))
{
    showfps = !showfps
}

//Turn off filtering if ALT+1 is pressed
else if keyboard_check_pressed(ord("1"))
{
    filter = 0
    message = "NO FILTERING"
    event_user(1)
}

//Turn on HQ2X filtering if ALT+2 is pressed
else if keyboard_check_pressed(ord("2"))
{
    filter = 1
    message = "HQ2X FILTERING"
    event_user(1)
}

//Turn on HQ4X filtering if ALT+3 is pressed
else if keyboard_check_pressed(ord("3"))
{
    filter = 2
    message = "HQ4X FILTERING"
    event_user(1)
}

//Show hotkey help
else
{
    if alarm[3] < 1
        message = "ALT+R: RESTART GAME#ALT+ENTER: FULL SCREEN#ALT+F4: QUIT GAME#ALT+1: TURN OFF FILTERING#ALT+2: TURN ON HQ2X FILTERING#ALT+3: TURN ON HQ4X FILTERING#ALT+V: VSYNC#ALT+F: FPS DISPLAY#ALT+G: GAMEPAD TOGGLE";
    exit
}

//Reset the message
alarm[3] = 60

