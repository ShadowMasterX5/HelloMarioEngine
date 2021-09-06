/// @description Fade in and out

//Start fading out after fading in
if image_alpha > 0.9
    ready = 1

//Fade in
if ready = 0
    image_alpha += 0.2

//Fade out
else
    image_alpha -= 0.2

