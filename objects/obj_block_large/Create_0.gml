/// @description Large Question Mark Block

/*
**  This item uses creation code!
**
**  sprout = Pick from below:
**      cs_big
**      cs_fire
**      cs_hammer
**      cs_leaf
**      cs_tanooki
**      cs_frog
**      cs_bomb
**      cs_ice
**      cs_super
**      cs_carrot
**      cs_ninja
**      cs_bee
**      cs_shell
**      cs_penguin
**      cs_propeller
**      cs_boomerang
**      cs_walljump
**      cs_squirrel
**      cs_cloud
**      cs_rock
**      cs_pyre
**      cs_swooper
**      cs_karate
**      cs_crown
**      cs_greenyoshi
**      cs_redyoshi
**      cs_yellowyoshi
**      cs_blueyoshi
**      cs_kuriboshoe
**      cs_baburushoe
**      cs_dossunshoe
**      cs_jugemushoe
**      cs_1up
**      cs_3up
**      cs_poison
**      cs_star
**      cs_key
**      cs_spring
**      cs_superspring
**      cs_pswitch
**      cs_eswitch
**      cs_propellerblock
**      cs_beanstalk
**
*/

//Default Value:
sprout = cs_coin

//Do not animate
image_speed = 0

//Whether this block can be hit
ready = 0

//Create a large solid
mysolid = instance_create(x,y,obj_solid)
mysolid.image_xscale = 2
mysolid.image_yscale = 2

/* */
/*  */
