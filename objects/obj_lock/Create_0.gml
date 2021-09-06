/// @description Lock away secret exits!

//Destroy if this path is already open
if ds_map_exists(global.worldmap,string(id))
    instance_destroy()

