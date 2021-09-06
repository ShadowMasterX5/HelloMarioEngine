/// @description A stackable, liftable minion... What?

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 4

//Is this enemy heavy?
isheavy = 0

//Facing direction
direct = -1

//Do not animate
image_speed = 0

//A collision object for Mario to ride
mytop = noone

//Remember the pokey parts below
if position_meeting(x,y+24,obj_pokey_green)
    mebelow = collision_point(x,y+24,obj_pokey_green,0,0)

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

