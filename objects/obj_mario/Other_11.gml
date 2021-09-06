/// @description Make Mario bounce off of something

//Enable variable jumping if shift is held down
if keyboard_check(vk_shift)
    jumpnow = 1
else
    jumpnow = 2

//Switch to the jump state
state = 2

//Bounce up
vspeed = -4

//Boost jump
y--

//Reset squirrel propel
squirrelpropel = 0

