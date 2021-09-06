/// @description Make objects and change direction

//Snap to the grid
move_snap(16,16)

//Start moving in the next direction
direction = nextdir

//If bricks need to be made, make it
if sprite_index = spr_brick
    with instance_create(x,y,obj_brick) image_index = other.image_index

//If coins need to be made, make it, but only if there is no coin there already
else if not position_meeting(x+8,y+8,obj_coin)
    with instance_create(x,y,obj_coin) image_index = other.image_index

//If the chain is moving left, and a solid is there, destroy
if direction = 0
{
    if position_meeting(x+24,y+8,obj_solid)
        instance_destroy()
}

//If the chain is moving up, and a solid is there, destroy
else if direction = 90
{
    if position_meeting(x+8,y-8,obj_solid)
        instance_destroy()
}

//If the chain is moving right, and a solid is there, destroy
else if direction = 180
{
    if position_meeting(x-8,y+8,obj_solid)
        instance_destroy()
}

//If the chain is moving down, and a solid top is there, destroy
else if direction = 270
{
    if position_meeting(x+8,y+24,obj_solidtop)
        instance_destroy()
}

//Make another object after 16 more pixels
alarm[0] = 16

