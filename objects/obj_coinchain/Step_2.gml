/// @description Coin chain item choice and direction control

//Use the appropriate sprite based on if the switch is on
if obj_levelmanager.switchon = 1
    sprite_index = spr_brick
else
    sprite_index = spr_coin

//If up is pressed, make the next direction up
if keyboard_check_pressed(vk_up)
    nextdir = 90

//If down is pressed, make the next direction down
else if keyboard_check_pressed(vk_down)
    nextdir = 270

//If up left pressed, make the next direction left
else if keyboard_check_pressed(vk_left)
    nextdir = 180

//If right is pressed, make the next direction right
else if keyboard_check_pressed(vk_right)
    nextdir = 0

