/// @description Some kind of stackable cactus minion

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 1

//Facing direction
direct = -1

//Do not animate
image_speed = 0

//Remember the pokey parts below
if position_meeting(x,y+24,obj_pokey)
    mebelow = collision_point(x,y+24,obj_pokey,0,0)

//If there is none, note that, and start walking towards Mario
else
{
    mebelow = noone
    alarm[10] = 2
}

//Offset values
offset = 0
offsetnext = 0
offsetdirect = 1

//Manage offset values
alarm[0] = 10

