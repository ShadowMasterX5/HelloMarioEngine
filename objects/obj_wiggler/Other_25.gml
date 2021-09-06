/// @description Turn around

//Change facing direction
if hspeed > 0
    direct = 1
else
    direct = -1

//Make body parts turn around in order
if ready = 0
{
    with mybody[0] alarm[0] = 20
    with mybody[1] alarm[0] = 36
    with mybody[2] alarm[0] = 52
    with mybody[3] alarm[0] = 68
}

//Faster if angry, and continue chasing Mario
else
{
    with mybody[0] alarm[0] = 10
    with mybody[1] alarm[0] = 18
    with mybody[2] alarm[0] = 26
    with mybody[3] alarm[0] = 34
    alarm[0] = 50
}

//Set their next direction
with mybody[0] nextdirect = other.direct
with mybody[1] nextdirect = other.direct
with mybody[2] nextdirect = other.direct
with mybody[3] nextdirect = other.direct

