/// @description It's a me, Mario!

//Mario's current state
//0: Stand, 1: Walk, 2: Jump, 3: Climb 4: Wall Climb/Jump
state = 0

//Mario's direction
//-1: Left, 1: Right
direct = 1

//Whether Mario is holding something
//0: Nothing, 1: Overhead, 2: On Front 3: Can't Hold Stuff
holding = 0

//Variable jump state
//0: Can Jump, 1: Variable Jump, 2: No Variable Jump
jumpnow = 0

//Is Mario skidding?
skidnow = 0

//Is Mario swimming?
isswim = 0

//Is Mario ducking?
isduck = 0

//Is Mario invincible?
//0: Normal, 1: Invincible, -1: Phase through
invincible = 0

//Is Mario smacking a net?
netsmack = 0

//Is Mario kicking something?
iamkicking = 0

//Is Mario spin jumping?
stompstyle = 0

//Is Mario on a slippery surface?
isslip = 0

//Is Mario's controls disabled?
disablecontrols = 0

//Is carrot/bee Mario floating?
isfloating = 0

//Is the float sound effect playing?
floatnow = 0

//How much longer can bee/crown Mario fly/float?
powerupfly = 0

//Did Mario wall jump?
walljump = 0

//Did squirrel Mario propel upwards yet?
squirrelpropel = 0

//Did Mario double jump?
doublejump = 0

//Is Mario firing a projectile?
firing = 0

//Is leaf/tanooki Mario wiggling his tail?
wiggle = 0

//What direction is frog/penguin Mario swimming in?
swimtype = 0

//Is frog/penguin Mario's swim sound effect looping?
noisy = 0

//Is Mario flashing?
isflashing = 0

//How many consecutive stomps has Mario made?
hitpoint = 0

//State delay variable
statedelay = 0

//Handles Mario's skid smoke
alarm[5] = 8

//Handles Mario's underwater bubbles
alarm[9] = 24 + random(96)

//Did Mario carry something over from another room?
if global.shallihold > 0
{
    holding = global.shallihold
    global.shallihold = 0
}

