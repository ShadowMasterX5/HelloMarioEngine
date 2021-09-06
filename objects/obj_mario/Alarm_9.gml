/// @description Create Mario's underwater bubble effect
if isswim = 1
    instance_create(x-2+6*direct,bbox_top+7,obj_bubble)
alarm[9] = 24 + random(96)

