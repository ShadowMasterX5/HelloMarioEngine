/// @description Finish spinning

//If it is done spinning
if spintimes = 0
{

    //Recreate solidtop
    myspin = instance_create(x,y,obj_solidtop)
    myspin.mask_index = spr_spinmask

    //Stop animating
    image_speed = 0
    image_index = 0

    //Reset spin count
    spintimes = 9

    //Spin again later
    alarm[0] = 100

}

//Otherwise, decrement
else
    spintimes--

