/// @description Set up on screen controls

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

//Up
mobile_keys[0] = virtual_key_add(34*s,118*s,32*s,32*s,vk_up)

//Down
mobile_keys[1] = virtual_key_add(34*s,182*s,32*s,32*s,vk_down)

//Left
mobile_keys[2] = virtual_key_add(2*s,150*s,32*s,32*s,vk_left)

//Right
mobile_keys[3] = virtual_key_add(66*s,150*s,32*s,32*s,vk_right)

//Jump
mobile_keys[4] = virtual_key_add(350*s,150*s,32*s,32*s,vk_shift)

//Run
mobile_keys[5] = virtual_key_add(310*s,150*s,32*s,32*s,vk_control)

//Pause
mobile_keys[6] = virtual_key_add(350*s,2*s,32*s,32*s,vk_enter)

//Inventory
mobile_keys[7] = virtual_key_add(2*s,2*s,32*s,32*s,vk_space)

