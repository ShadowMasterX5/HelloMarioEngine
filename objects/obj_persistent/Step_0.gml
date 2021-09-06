/// @description Gamepad support
if gamepad
{

    //Up on left stick
    if leftstick[0] = 0
    and gamepad_axis_value(0,gp_axislv) <= -0.5
    {
        leftstick[0] = 1
        keyboard_key_press(vk_up)
    }
    else if leftstick[0] = 1
    and gamepad_axis_value(0,gp_axislv) > -0.5
    {
        leftstick[0] = 0
        keyboard_key_release(vk_up)
    }

    //Down on left stick
    if leftstick[1] = 0
    and gamepad_axis_value(0,gp_axislv) >= 0.5
    {
        leftstick[1] = 1
        keyboard_key_press(vk_down)
    }
    else if leftstick[1] = 1
    and gamepad_axis_value(0,gp_axislv) < 0.5
    {
        leftstick[1] = 0
        keyboard_key_release(vk_down)
    }

    //Left on left stick
    if leftstick[2] = 0
    and gamepad_axis_value(0,gp_axislh) <= -0.5
    {
        leftstick[2] = 1
        keyboard_key_press(vk_left)
    }
    else if leftstick[2] = 1
    and gamepad_axis_value(0,gp_axislh) > -0.5
    {
        leftstick[2] = 0
        keyboard_key_release(vk_left)
    }

    //Right on left stick
    if leftstick[3] = 0
    and gamepad_axis_value(0,gp_axislh) >= 0.5
    {
        leftstick[3] = 1
        keyboard_key_press(vk_right)
    }
    else if leftstick[3] = 1
    and gamepad_axis_value(0,gp_axislh) < 0.5
    {
        leftstick[3] = 0
        keyboard_key_release(vk_right)
    }

    //Up on d-pad
    if gamepad_button_check_pressed(0,gp_padu)
        keyboard_key_press(vk_up)
    else if gamepad_button_check_released(0,gp_padu)
        keyboard_key_release(vk_up)

    //Down on d-pad
    if gamepad_button_check_pressed(0,gp_padd)
        keyboard_key_press(vk_down)
    else if gamepad_button_check_released(0,gp_padd)
        keyboard_key_release(vk_down)

    //Left on d-pad
    if gamepad_button_check_pressed(0,gp_padl)
        keyboard_key_press(vk_left)
    else if gamepad_button_check_released(0,gp_padl)
        keyboard_key_release(vk_left)

    //Right on d-pad
    if gamepad_button_check_pressed(0,gp_padr)
        keyboard_key_press(vk_right)
    else if gamepad_button_check_released(0,gp_padr)
        keyboard_key_release(vk_right)

    //A button
    if gamepad_button_check_pressed(0,gp_face1)
        keyboard_key_press(ord("X"))
    else if gamepad_button_check_released(0,gp_face1)
        keyboard_key_release(ord("X"))

    //B button
    if gamepad_button_check_pressed(0,gp_face2)
        keyboard_key_press(vk_control)
    else if gamepad_button_check_released(0,gp_face2)
        keyboard_key_release(vk_control)

    //X button
    if gamepad_button_check_pressed(0,gp_face3)
        keyboard_key_press(ord("Z"))
    else if gamepad_button_check_released(0,gp_face3)
        keyboard_key_release(ord("Z"))

    //Start button
    if gamepad_button_check_pressed(0,gp_start)
        keyboard_key_press(vk_enter)
    else if gamepad_button_check_released(0,gp_start)
        keyboard_key_release(vk_enter)

    //Select button
    if gamepad_button_check_pressed(0,gp_select)
        keyboard_key_press(vk_space)
    else if gamepad_button_check_released(0,gp_select)
        keyboard_key_release(vk_space)

}

