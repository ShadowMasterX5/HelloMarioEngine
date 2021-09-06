/// @description Blow Mario

//If Mario is not frog/penguin swimming, in the way, and not moving too fast, blow him
if collision_rectangle(x,y+16,x+32,y+96,obj_mario,0,0)
and ((global.powerup != cs_frog and global.powerup != cs_penguin) or obj_mario.holding > 0)
and obj_mario.vspeed < 4
    obj_mario.vspeed += 0.25

