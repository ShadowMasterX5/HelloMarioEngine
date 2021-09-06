/// @description Check if Mario is holding or carrying something

//If Mario is carrying something, use the carry sprite
if global.shallihold = 1
{
    sprite_index = scr_mariocarry()
    image_index = 2
}

//If Mario is holding something, use the hold sprite
else if global.shallihold = 2
{
    sprite_index = scr_mariohold()
    image_index = 2
}

