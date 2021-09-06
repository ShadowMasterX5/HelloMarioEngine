/// @description Generated jumping cheep cheep

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 0

//Facing direction
if x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
{
    direction = 100
    direct = -1
}
else
{
    direction = 80
    direct = 1
}

//Animate
image_speed = 0.15

//Gravity
gravity = 0.1

//Random speed
speed = 4+random(3)

//Randomly become green
if choose(1,0) = 1
    sprite_index = spr_greencheep

