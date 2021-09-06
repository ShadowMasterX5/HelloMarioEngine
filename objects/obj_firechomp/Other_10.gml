/// @description Fire chomp death
with instance_create(round(x),round(y+16),obj_enemy_dead)
{
    sprite_index = other.sprite_index
    image_index = other.image_index
}

//Kill remaining tail parts
if mytails > 0
{
    with instance_create(round(x+8),round(y+16),obj_enemy_multidead)
    {
        killsprite = spr_fireball
        killxscale = other.direct
        count = other.mytails
    }
}

//Destroy
instance_destroy()

