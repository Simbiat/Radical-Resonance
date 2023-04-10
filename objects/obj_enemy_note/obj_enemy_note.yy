{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy_note",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_physical","path":"objects/obj_physical/obj_physical.yy",},"propertyId":{"name":"stride","path":"objects/obj_physical/obj_physical.yy",},"value":"15",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_physical","path":"objects/obj_physical/obj_physical.yy",},"propertyId":{"name":"gravityForce","path":"objects/obj_physical/obj_physical.yy",},"value":"0.025",},
  ],
  "parent": {
    "name": "Projectiles",
    "path": "folders/Objects/Projectiles.yy",
  },
  "parentObjectId": {
    "name": "obj_enemy_projectile",
    "path": "objects/obj_enemy_projectile/obj_enemy_projectile.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"image_xscale","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1.5","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"image_yscale","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1.5","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"image_index","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"image_number - 1","varType":4,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_notes",
    "path": "sprites/spr_notes/spr_notes.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}