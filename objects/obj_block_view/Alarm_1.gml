/// @description Finish block bump
vspeed = 0
y = ystart

//Make the item displayed by the block
switch floor(image_index)
{
    case 0:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_mushroom
        break
    case 1:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_fireflower
        break
    case 2:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_hammersuit
        break
    case 3:
        instance_create(x,y,obj_leaf)
        break
    case 4:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_tanookisuit
        break
    case 5:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_frogsuit
        break
    case 6:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_bombshroom
        break
    case 7:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_iceflower
        break
    case 8:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_superflower
        break
    case 9:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_carrot
        break
    case 10:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_ninjasuit
        break
    case 11:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_beeshroom
        break
    case 12:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_blueshell
        break
    case 13:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_penguinsuit
        break
    case 14:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_propellershroom
        break
    case 15:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_boomerangflower
        break
    case 16:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_walljumpshroom
        break
    case 17:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_acorn
        break
    case 18:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_cloudflower
        break
    case 19:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_rockshroom
        break
    case 20:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_pyreflower
        break
    case 21:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_swoopersuit
        break
    case 22:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_karatesuit
        break
    case 23:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_supercrown
        break
    case 24:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_hatch
        break
    case 25:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_hatch_r
        break
    case 26:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_hatch_y
        break
    case 27:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_hatch_b
        break
    case 28:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_kuriboshoe
        break
    case 29:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_baburushoe
        break
    case 30:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_dossunshoe
        break
    case 31:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_jugemushoe
        break
    case 32:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_1up
        break
    case 33:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_star
        break
    case 34:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_poison
        break
    case 35:
        with instance_create(x,y,obj_powerupsprout) sprite_index = spr_3upmoon
        break
}

//Use the empty view block sprite
sprite_index = spr_viewblock_em

