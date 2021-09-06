/// @description Rex flattening

//If rex is tall, flatten somewhat
if sprite_index = spr_rex
{
    y+= 16
    sprite_index = spr_rex2
    mask_index = spr_enemymask
    hspeed = hspeed*2
}

//Otherwise, flatten to death
else
{

    //Flatten to death
    with instance_create(round(x),y,obj_stomped)
    {
        sprite_index = spr_rex_sq
        image_xscale = other.direct
    }

    //Destroy
    instance_destroy()

}

