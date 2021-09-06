image_speed = 0
image_index = 1
for(var i = 1; i < 23; i++)
{
    with instance_create(x+i*32,y,obj_block_view)
    {
        image_speed = 0
        image_index = i+1
    }
}