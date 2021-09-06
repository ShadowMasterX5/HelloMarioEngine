/// @description Handles Mario's logic in the world map

//If Mario is death skidding, and reached his location
if ready = 2
and round(x) = returnx
and round(y) = returny
{

    //Stop the sound
    audio_stop_sound(snd_spin)

    //Change to the event state
    ready = 1

    //Stop moving
    speed = 0

    //Make sure his coordinates are exact
    x =  returnx
    y = returny

    //Set the alarm to allow Mario to move
    alarm[1] = 60

}

//If Mario is in his normal state
else if ready = 0
{

    //If he is not moving
    if speed = 0
    {

        //Get the id of the panel he is on
        panel = collision_point(x+8,y+8,obj_panelparent,0,0)

        //If the up key is pressed
        if keyboard_check_pressed(vk_up)
        {

            //If there is no solid in the way
            if not position_meeting(x+8,y-8,obj_solid)
            {

                //If the panel, if it exists, is not beaten or not open in the up direction, play the bump sound
                if panel
                and panel.beaten = 0
                and panel.open[1] = 0
                    audio_play_sound(snd_bump,0,0)

                //Otherwise, move up 32 pixels
                else
                {
                    audio_play_sound(snd_move,0,0)
                    vspeed = -2
                    alarm[0] = 16
                }

            }

            //Otherwise, play the bump sound
            else
                audio_play_sound(snd_bump,0,0)

        }

        //If the down key is pressed
        else if keyboard_check_pressed(vk_down)
        {

            //If there is no solid in the way
            if not position_meeting(x+8,y+23,obj_solid)
            {

                //If the panel, if it exists, is not beaten or not open in the down direction, play the bump sound
                if panel
                and panel.beaten = 0
                and panel.open[0] = 0
                    audio_play_sound(snd_bump,0,0)

                //Otherwise, move down 32 pixels
                else
                {
                    audio_play_sound(snd_move,0,0)
                    vspeed = 2
                    alarm[0] = 16
                }

            }

            //Otherwise, play the bump sound
            else
                audio_play_sound(snd_bump,0,0)

        }

        //If the left key is pressed
        else if keyboard_check_pressed(vk_left)
        {

            //If there is no solid in the way
            if not position_meeting(x-4,y+8,obj_solid)
            {

                //If the panel, if it exists, is not beaten or not open in the left direction, play the bump sound
                if panel
                and panel.beaten = 0
                and panel.open[3] = 0
                    audio_play_sound(snd_bump,0,0)

                //Otherwise, move left 32 pixels
                else
                {
                    audio_play_sound(snd_move,0,0)
                    hspeed = -2
                    alarm[0] = 16
                }

            }

            //Otherwise, play the bump sound
            else
                audio_play_sound(snd_bump,0,0)

        }

        //If the right key is pressed
        else if keyboard_check_pressed(vk_right)
        {

            //If there is no solid in the way
            if not position_meeting(x+23,y+8,obj_solid)
            {

                //If the panel, if it exists, is not beaten or not open in the right direction, play the bump sound
                if panel
                and panel.beaten = 0
                and panel.open[2] = 0
                    audio_play_sound(snd_bump,0,0)

                //Otherwise, move right 32 pixels
                else
                {
                    audio_play_sound(snd_move,0,0)
                    hspeed = 2
                    alarm[0] = 16
                }

            }

            //Otherwise, play the bump sound
            else
                audio_play_sound(snd_bump,0,0)

        }

        //If the inventory is not open, and space is pressed
        else if inventory = 0
        and keyboard_check_pressed(vk_space)
        {

            //Play the inventory sound
            audio_play_sound(snd_inventory,0,0)

            //Set the event state
            ready = 1

            //Open the inventory
            inventory = 1

            //Reset the selection
            boxselection = 1

            //If the inventory is empty
            if global.inventory[0] = 0
            {

                //If the reserve item is empty, select nothing, otherwise select it
                if global.reserveitem = cs_small
                    boxselection = 0
                else
                    boxselection = 16
            }

        }

        //Change the parent being checked
        panel = collision_point(x+8,y+8,obj_worldparent,0,0)

        //If Mario is on a panel
        if panel
        {

            //Take its name for display
            mytext = panel.levelname

            //If shift is pressed, and the panel can be triggered
            if keyboard_check_pressed(vk_shift)
            and panel.ready = 0
            {

                //Prepare to leave the world map
                event_user(0)

                //Go where the panel takes you
                with panel event_user(3)

            }

        }

    }

    //If he is moving, reset the text
    else
        mytext = ""

}

//If the inventory is open
else if inventory = 1
{

    //If space is pressed
    if keyboard_check_pressed(vk_space)
    {

        //Play the inventory sound
        audio_play_sound(snd_inventory,0,0)

        //Go back to the normal state
        ready = 0

        //Close the inventory
        inventory = 0

    }

    //If the inventory is not empty
    else if boxselection != 0
    {

        //If shift is pressed
        if keyboard_check_pressed(vk_shift)
        {

            //If the item selected is the reserve item
            if boxselection = 16
            {

                //Swap the current powerup with the reserve item
                var previous = global.powerup
                global.powerup = global.reserveitem
                global.reserveitem = previous

                //Finish item retrieval
                event_user(1)

            }

            //If the item selected is not the reserve item
            else
            {

                //Remember the last powerup
                var previous = global.powerup

                //Change the powerup to the selected item
                global.powerup = global.inventory[boxselection]

                //If Mario had no powerup previously
                if previous = 0
                {

                    //Shift the inventory items over by one
                    for(var i = boxselection; i < global.inventory[0]; i++)
                        global.inventory[i] = global.inventory[i+1]

                    //Subtract from the number of items in the inventory
                    global.inventory[0]--

                }

                //Otherwise, put the old powerup in the inventory
                else
                    global.inventory[boxselection] = previous

                //Finish item retrieval
                event_user(1)

            }

        }

        //If left is pressed, there are items in the inventory, and the selected item is not the leftmost item
        else if boxselection > 1
        and global.inventory[0] != 0
        and keyboard_check_pressed(vk_left)
        {

            //If the reserve item is selected, go to the last inventory item
            if boxselection = 16
                boxselection = global.inventory[0]

            //Otherwise, go left one item
            else
                boxselection--

            //Play the move sound
            audio_play_sound(snd_move,0,0)

        }

        //If right is pressed, and the selected item is not the rightmost item
        else if boxselection < 16
        and keyboard_check_pressed(vk_right)
        {

            //If there are more inventory items, go right one
            if boxselection < global.inventory[0]
                boxselection++

            //Otherwise, if there is a reserve item, go to it
            else if global.reserveitem > cs_small
                boxselection = 16

            //Otherwise, do not play the move sound
            else
                exit

            //Play the move sound
            audio_play_sound(snd_move,0,0)

        }

    }

}

