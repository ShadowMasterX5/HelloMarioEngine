/// @description Create Mario's first spin jump projectile

//Fire Ball
if global.powerup = cs_fire
and instance_number(obj_fireball) < 2
    with instance_create(x,y+16,obj_fireball) hspeed = 3*other.direct

//Hammer
else if global.powerup = cs_hammer
and instance_number(obj_hammer) < 2
    with instance_create(x,y+16,obj_hammer) hspeed = 1.5*other.direct

//Ice Ball
else if (global.powerup = cs_ice or global.powerup = cs_penguin)
and instance_number(obj_iceball) < 1
    with instance_create(x,y+16,obj_iceball) hspeed = 3*other.direct

//Super Ball
else if global.powerup = cs_super
and instance_number(obj_superball) < 2
    with instance_create(x,y+16,obj_superball) hspeed = 2*other.direct

//Shuriken
else if global.powerup = cs_ninja
and instance_number(obj_shuriken) < 2
    with instance_create(x,y+20,obj_shuriken) hspeed = 5*other.direct

//Pyre Ball
else if global.powerup = cs_pyre
and instance_number(obj_pyreball) < 2
    with instance_create(x,y+16,obj_pyreball) hspeed = 3*other.direct

//Second Projectile
alarm[8] = 10

