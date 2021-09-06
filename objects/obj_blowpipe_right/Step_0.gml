/// @description Blow Mario

//If Mario is not frog/penguin swimming, in the way, and not moving too fast, blow him
if collision_rectangle(x+16,y,x+96,y+32,obj_mario,0,0)
and ((global.powerup != cs_frog and global.powerup != cs_penguin) or obj_mario.holding > 0)
and not collision_rectangle(obj_mario.x+9,obj_mario.bbox_top,obj_mario.x+9,obj_mario.y+31,obj_solid,0,0)
and obj_mario.hspeed < 4
    obj_mario.hspeed += 0.25

