/// @description Yoshi is being ridden

//On Yoshi
global.yoshi = 1

//Is Yoshi licking?
licking = 0

//What is in Yoshi's mouth?
inmouth = noone

//Sprite of item in mouth
mouthsprite = noone

//Animation
anim = 0

//Mario's previous state
stateprev = 0

//Is Yoshi jumping?
jumping = 0

//Is blue Yoshi flying?
flying = 0

//Flying animation
flyanim = 1

//If an item was carried over
if global.carrieditem != noone
{

    //Remember the item
    inmouth = global.carrieditem

    //Reset the item
    global.carrieditem = noone

    //Remember the sprite
    mouthsprite = global.carriedsprite

    //Reset the sprite
    global.carriedsprite = noone

}

