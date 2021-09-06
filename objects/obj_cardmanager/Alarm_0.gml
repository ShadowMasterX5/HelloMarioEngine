/// @description Progress the game

//Return to the world map if there were 2 wrong matches or 18 cards flipped
if wrong = 2
or count = 18
    scr_return()

//Otherwise, wait for user input
else
    ready = 0

