/// @description Pull a bomb
with instance_create(obj_mario.x-8,obj_mario.y-5,obj_grassbomb)
{
    image_speed = other.image_speed
    alarm[0] = other.alarm[0]
    alarm[1] = other.alarm[1]
}

//Make Mario hold it
obj_mario.holding = 1

//Destroy
instance_destroy()

