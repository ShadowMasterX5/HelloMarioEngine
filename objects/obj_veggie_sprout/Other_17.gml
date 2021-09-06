/// @description Pull out powerup
with instance_create(x,y-1,obj_grasspowerup)
{
    hspeed = obj_mario.direct
    sprite_index = scr_constant_get_sprite(other.sprout)
}

//Destroy
instance_destroy()

