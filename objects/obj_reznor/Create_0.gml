/// @description Four reznor on four platforms

//Make platforms
instance_create(x,y-48,obj_reznor_platform)
with instance_create(x-48,y,obj_reznor_platform) direction = 90
with instance_create(x+48,y,obj_reznor_platform) direction = 270
with instance_create(x,y+48,obj_reznor_platform) direction = 180

//Make enemies
instance_create(x,y-80,obj_reznor_enemy)
with instance_create(x-48,y-32,obj_reznor_enemy) direction = 90
with instance_create(x+48,y-32,obj_reznor_enemy) direction = 270
with instance_create(x,y+16,obj_reznor_enemy) direction = 180

