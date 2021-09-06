/// @description This phanto will give chase if the nearest key to it is moved...

//How vulnerable is this enemy to various items?
hardness = 100

//How vulnerable is this enemy to Mario?
stomp = -1

//The key this phanto will track
if instance_exists(obj_key)
{
    mykey = instance_nearest(x,y,obj_key)
    oldx = mykey.x
    oldy = mykey.y
}

//Destroy if there is no keys
else
    instance_destroy()

//Chase mode
chasemode = 0

