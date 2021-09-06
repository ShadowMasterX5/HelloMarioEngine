/// @description Fade in

//Fade until opaque
if image_alpha < 1
{
    image_alpha += 0.2
    alarm[10] = 5
}

//Then become vulnerable
else
{
    hardness = 1
    stomp = 2
}

