/// @description Timed spring logic

//Default event
event_inherited()

//Start timer
if timed = 0
and held = 1
{
    timed = 1
    alarm[0] = 500
    alarm[1] = 400
}

