/// @description Swap coins with bricks and bricks with coins

//Turn bricks into fake coins
with obj_brick
{
    instance_create(x,y,obj_coinchange)
    instance_destroy()
}

//Turn coins into bricks
with obj_coin
{
    instance_create(x,y,obj_brick)
    instance_destroy()
}

//Turn fake coins into coins
with obj_coinchange
{
    instance_create(x,y,obj_coin)
    instance_destroy()
}

