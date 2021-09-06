/// @description Pokey logic

//Set image index and make collisions based on if there is a pokey above
if position_meeting(x,y-8,obj_pokey_green)
{
    image_index = 1
    if instance_exists(mytop)
        with mytop instance_destroy()
}
else
{
    image_index = 0
    if not instance_exists(mytop)
    {
        mytop = instance_create(x-8,y,obj_solidtop)
        mytop.image_yscale = 0.5
    }
}

//If there is no memory of a pokey below
if mebelow = noone
{

    //If a pokey is below, remember that
    if position_meeting(x,y+24,obj_pokey_green)
    {
        mebelow = collision_point(x,y+24,obj_pokey_green,0,0)
        gravity = 0
        vspeed = 0
    }

    //Otherwise, execute default event
    else
        event_inherited()

}

//If there is memory of a pokey below
else
{

    //If it exists, snap to its position
    if instance_exists(mebelow)
    {
        x = mebelow.x
        y = mebelow.y-16
        hspeed = mebelow.hspeed
        direct = mebelow.direct
    }

    //Otherwise, lose memory of it, and move towards Mario
    else
    {
        mebelow = noone
        if not instance_exists(obj_mario)
        or obj_mario.x < x
            hspeed = -0.5
        else
            hspeed = 0.5
    }

}

