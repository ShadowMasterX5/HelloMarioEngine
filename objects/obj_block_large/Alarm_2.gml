/// @description Make up to three bouncy items
if ready < 4
{
    ready++
    with instance_create(x+8,y,obj_powerupsprout)
    {
        sprite_index = scr_constant_get_sprite(other.sprout)
        bounce = 1
    }
    alarm[2] = 48
}

