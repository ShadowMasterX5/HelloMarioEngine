/// @description Stop moving raft parts
hspeed = 0
if myleft != noone
{
    myleft.x = x-16
    with myleft event_user(1)
}

