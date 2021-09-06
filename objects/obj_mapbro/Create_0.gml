/// @description World Map Hammer Battle

/*
**  This item uses creation code!
**
**  type = Pick from below:
**      0: Hammer Bros
**      1: Fire Bros
**      2: Boomerang Bros
**      3: Sledge Bros
**
**  powerup = Powerup in prize chest:
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
**      cs_1up
**      cs_3up
**
*/

//Default Values:
type = 0
powerup = -1

//Start at the left and move right 1 block
hspeed = 0.5
x -= 8
alarm[0] = 32

//Don't display a name
levelname = ""

//No conventional level entering
ready = 1

//Animate!
image_speed = 0.15

//Face right
direct = 1

//Figure out if this battle has already been fought
if ds_map_exists(global.worldmap,string(id))
    instance_destroy()

/* */
/*  */
