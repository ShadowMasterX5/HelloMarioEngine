/// @description Fade out

//Fade until gone
if image_alpha > 0
{
    image_alpha -= 0.2
    alarm[11] = 5
    hardness = 100
    stomp = -1
}

//Then destroy
else
    instance_destroy()

