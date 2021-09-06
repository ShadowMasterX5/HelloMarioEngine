/// @description A skull raft on lava

//Sink into lava
y+=4

//Animate
image_speed = 0.15

//Left raft
myleft = collision_point(x-8,y+8,obj_skullraft,0,1)

//Right raft
myright = collision_point(x+24,y+8,obj_skullraft,0,1)

//Length of raft
length = 0

//State variable
ready = 0

//Calculate length for leftmost skull in raft
if myright = noone
{
    while position_meeting(x-8-length,y+8,obj_skullraft)
        length += 16
}

