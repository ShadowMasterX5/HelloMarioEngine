/// @description Should the prize appear?

//If it hasn't appeared yet, and no enemies exist
if ready = 0
and instance_number(obj_deactenemyparent) = 0
{

    //Create smoke
    instance_create(x,y,obj_smoke)

    //Become visible
    visible = 1

    //Chest appeared
    ready = 1

}

