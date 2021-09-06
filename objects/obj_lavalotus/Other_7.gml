/// @description Count animation cycles

//Decrement if above zero
if ready > 0
    ready--

//Otherwise
else
{

    //Spit animation
    sprite_index = spr_lavalotus_spit
    image_speed = 0

    //Spit lotus balls
    with instance_create(x+12,y,obj_lavalotusball) direction =  135
    with instance_create(x+12,y,obj_lavalotusball) direction =  45
    with instance_create(x+12,y,obj_lavalotusball) direction =  120
    with instance_create(x+12,y,obj_lavalotusball) direction =  60

    //Reset state later
    alarm[0] = 30

}

