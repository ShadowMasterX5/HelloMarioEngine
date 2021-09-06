/// @description Make block train parts

//If Mario is above
if collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top+4,obj_mario,0,0)
{

    //Make front part
    myfront = instance_create(x+112,y,obj_blocktrain_front)

    //Create middle parts
    instance_create(x+16,y,obj_blocktrain_middle)
    instance_create(x+32,y,obj_blocktrain_middle)
    instance_create(x+48,y,obj_blocktrain_middle)
    instance_create(x+64,y,obj_blocktrain_middle)
    instance_create(x+80,y,obj_blocktrain_middle)
    instance_create(x+96,y,obj_blocktrain_middle)

    //Make back part
    myfront.myback = instance_create(x,y,obj_blocktrain_back)

    //Destroy
    instance_destroy()

}

