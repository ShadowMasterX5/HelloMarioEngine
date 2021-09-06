/// @description Displays a message inside a box!

/*
**  This item uses creation code!
**
**  varmsg = Message to display in the message box
**
*/

//Default Value:
varmsg = "No message set!"

//Can the text be seen?
showing = 0

//Create a screenshot
back = background_create_from_surface(application_surface,0,0,640,480,0,0)

//Deactivate everything except the persistent object
instance_deactivate_all(1)
instance_activate_object(obj_persistent)

//Set the alarm to format the text
alarm[0] = 1

/* */
/*  */
