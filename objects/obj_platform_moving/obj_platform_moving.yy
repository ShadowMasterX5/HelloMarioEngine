{
  "spriteId": {
    "name": "spr_platform",
    "path": "sprites/spr_platform/spr_platform.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": {
    "name": "spr_mask48x16",
    "path": "sprites/spr_mask48x16/spr_mask48x16.yy",
  },
  "persistent": false,
  "parentObjectId": {
    "name": "obj_solidtop",
    "path": "objects/obj_solidtop/obj_solidtop.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 0,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":0.0,"y":0.0,},
    {"x":24.0,"y":24.0,},
  ],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_platform_moving","path":"objects/obj_platform_moving/obj_platform_moving.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":2,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_platform_moving","path":"objects/obj_platform_moving/obj_platform_moving.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_right","path":"objects/obj_right/obj_right.yy",},"parent":{"name":"obj_platform_moving","path":"objects/obj_platform_moving/obj_platform_moving.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_left","path":"objects/obj_left/obj_left.yy",},"parent":{"name":"obj_platform_moving","path":"objects/obj_platform_moving/obj_platform_moving.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_down","path":"objects/obj_down/obj_down.yy",},"parent":{"name":"obj_platform_moving","path":"objects/obj_platform_moving/obj_platform_moving.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_up","path":"objects/obj_up/obj_up.yy",},"parent":{"name":"obj_platform_moving","path":"objects/obj_platform_moving/obj_platform_moving.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [],
  "parent": {
    "name": "Platforms",
    "path": "folders/Objects/Items/Platforms.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_platform_moving",
  "tags": [],
  "resourceType": "GMObject",
}