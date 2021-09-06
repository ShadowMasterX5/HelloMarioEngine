/// @description Prepare torpedo

//Make torpedo
mytorpedo = instance_create(x+16,y+16,obj_torpedoted)

//Make it face Mario
if not instance_exists(obj_mario)
or obj_mario.x < x
    mytorpedo.direct = -1
else
    mytorpedo.direct = 1

//Make it move down
mytorpedo.vspeed = 1

//Move down
vspeed = 1

//Stop moving later
alarm[1] = 32

