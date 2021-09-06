/// @description Hello Mario Engine's persistent object

//How the screen is fading
//0: From black, 1: To black
mode = 0

//How much the screen is faded
done = 0

//Screenshot of the game, if it exists
back = -1

//Message to display to the screen
message = ""

//Whether to show the FPS
showfps = 0

//Declare global variables
scr_init_globals()

//Item that is being carried between rooms
global.carrieditem = noone

//The sprite used by an item carried between rooms
global.carriedsprite = noone

//Whether Mario should hold/carry an object
global.shallihold = 0

//The level music
global.levelmusic = snd_gameover

//Data structure for storing collected ace coins
global.acecoins = ds_map_create()

//Data structure for storing the state of the world map
global.worldmap = ds_map_create()

//Data structure for storing the state of the card minigame
global.cardgame = ds_map_create()

//Font for dialog boxes
global.messagefont = font_add_sprite_ext(spr_messagefont,"!\""+"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~",0,0)

//Font for small letters
global.font = font_add_sprite_ext(spr_spritefont,"!\""+"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~",1,-1)

//Font for white digits
global.wdigits = font_add_sprite_ext(spr_numbers,"0123456789",0,0)

//Font for gold digits
global.gdigits = font_add_sprite_ext(spr_numbersgold,"0123456789",0,0)

//Make the x key do everything the shift key does
keyboard_set_map(ord("X"),vk_shift)

//Make the z key do everything the control key does
keyboard_set_map(ord("Z"),vk_control)

//Handle gamepad support
gamepad = gamepad_is_connected(0)

//Gamepad left stick
leftstick[0] = 0
leftstick[1] = 0
leftstick[2] = 0
leftstick[3] = 0

//Set the epsilon value for floating point numbers
math_set_epsilon(0.00001)

//Disable application surface automatic drawing
application_surface_draw_enable(0)

