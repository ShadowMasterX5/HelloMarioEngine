/// @description Turn Mario into goal Mario

//Make the flag move down
flag.vspeed = 1.5

//Create the appropriate point object based on Mario's height
if other.y < y+16
    with instance_create(x,other.y,obj_score) event_user(7)
else if other.y < y+32
    with instance_create(x,other.y,obj_score) event_user(6)
else if other.y < y+48
    with instance_create(x,other.y,obj_score) event_user(5)
else if other.y < y+64
    with instance_create(x,other.y,obj_score) event_user(4)
else if other.y < y+80
    with instance_create(x,other.y,obj_score) event_user(3)
else if other.y < y+96
    with instance_create(x,other.y,obj_score) event_user(2)
else if other.y < y+112
    with instance_create(x,other.y,obj_score) event_user(1)
else
    with instance_create(x,other.y,obj_score) event_user(0)

//Create goal Mario
instance_create(x+9,other.y,obj_goalmario)

//Destroy Mario
with other instance_destroy()

