/// @description Continue combo
if attack = 0
{

    //Check for direction change
    with obj_mario
    {
        if direct = 1
        and keyboard_check(vk_left)
            direct = -1
        else if direct = -1
        and keyboard_check(vk_right)
            direct = 1

    }

    //Begin attack
    event_user(0)

}

