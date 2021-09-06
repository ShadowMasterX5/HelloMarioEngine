/// @description Create a sparkle trail
if visible = 1
    with instance_create(x-8+random(16),y-8+random(16),obj_sparkletrail) depth = other.depth
alarm[1] = 8

