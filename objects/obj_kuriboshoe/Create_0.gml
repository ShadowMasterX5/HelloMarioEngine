/// @description A shoe Mario can ride

//On shoe
global.yoshi = 2

//Do not animate
image_speed = 0

//Offset values
offset = 0
offsetnext = 0

//Manage offset values
alarm[0] = 2

//Mario's previous state
stateprev = 0

//Is the jugemu shoe flying?
flying = 0

//Use correct shoe sprite
if global.ycolor = 1
    sprite_index = spr_baburushoe
else if global.ycolor = 2
    sprite_index = spr_dossunshoe
else if global.ycolor = 3
    sprite_index = spr_jugemushoe

