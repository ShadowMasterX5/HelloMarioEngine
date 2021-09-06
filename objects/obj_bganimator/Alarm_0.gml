/// @description Animates the background

//Set the background to the next one
__background_set( e__BG.Index, 0, anibg[numb] )

//Increment the current frame of animation
numb++

//Go back to the first image if there are no more left
if numb = array_length_1d(anibg)
    numb = 0

//Continue the animation later
alarm[0] = 7

