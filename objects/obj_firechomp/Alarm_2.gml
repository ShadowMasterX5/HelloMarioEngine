/// @description Shoot fire or prepare to explode

//If there are tail parts left
if mytails > 0
{

    //Open wide
    image_index = 2

    //Shoot fire
    with instance_create(x+8,y,obj_reznor_fire)
    {
        sprite_index = spr_firechomp_fire
        speed = 1
    }

    //Decrement tail parts
    mytails--

    //Destroy farthest tail part
    with mytail[mytails] instance_destroy()

    //Move again later
    alarm[0] = 30

}

//Otherwise, prepare to explode
else
{
    sprite_index = spr_firechomp_flash
    image_speed = 0.3
    alarm[3] = 60
}

