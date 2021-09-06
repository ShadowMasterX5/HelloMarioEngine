/// @description Advance the text

//If text is being displayed
if showing = 1
{

    //If the full message is not displayed yet, display it all
    if a <= string_length(text)
        a = string_length(text)+1

    //Otherwise
    else
    {

        //If there is more to be displayed
        if new_text != ""
        {

            //Make the new text the current text
            text = new_text
            new_text = ""

            //Split up the message if it is too long
            event_user(0)

        }

        //Otherwise
        else
        {

            //Activate everything
            instance_activate_all()

            //Delete the screenshot
            if background_exists(back)
                background_delete(back)

            //Reset the state of the shift key
            keyboard_clear(vk_shift)

            //Destroy the message box
            instance_destroy()

        }

    }

}

