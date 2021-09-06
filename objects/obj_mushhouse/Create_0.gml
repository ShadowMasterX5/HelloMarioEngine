/// @description World Map Mushroom House

/*
**  This item uses creation code!
**
**  powerup[0] = Powerup in middle chest: (Leave the other two blank for one chest)
**  powerup[1] = Powerup in left chest:
**  powerup[2] = Powerup in right chest:
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
powerup[0] = -1
powerup[1] = -1
powerup[2] = -1

//Figure out if this mushroom house has already been entered
if ds_map_exists(global.worldmap,string(id))
    ready = 1
else
    ready = 0

//Name to display
levelname = "mushroom house"

/* */
/*  */
