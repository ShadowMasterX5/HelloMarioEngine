/// @description Split up the message if it is too long

//Make sure that the font is correct before formatting
draw_set_font(global.messagefont)

//Iterate over all the characters in the message
for(var i = 1; i <= string_length(text); i++)
{

    //If the text is too tall
    if string_height(string_hash_to_newline(string_copy(text,1,min(i+1,string_length(text))))) > 70
    {

        //Split off the lines after the new line to be displayed later
        new_text = string_copy(text,i+1,string_length(text)-i)
        text = string_copy(text,1,i)

        //Break out of the loop
        break

    }

}

//Set the number of characters being displayed
a = 0

//Set the alarm for playing the sound effects
alarm[1] = 1

