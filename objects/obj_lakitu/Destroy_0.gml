/// @description Make a lakitu ticker on death
with instance_create(x,y,obj_lakituticker)
{
    mylakitu = other.object_index
    xmin = other.xmin
    xmax = other.xmax
}

