{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_mogul",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":10,"eventType":7,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"damageSelfOnCollision","path":"objects/obj_enemy/obj_enemy.yy",},"value":"True",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"attackLength","path":"objects/obj_enemy/obj_enemy.yy",},"value":"1",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"attackWhileMoving","path":"objects/obj_enemy/obj_enemy.yy",},"value":"False",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"hp","path":"objects/obj_enemy/obj_enemy.yy",},"value":"4",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"stride","path":"objects/obj_enemy/obj_enemy.yy",},"value":"1",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"sfxDeath","path":"objects/obj_enemy/obj_enemy.yy",},"value":"snd_missle_impact",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "parentObjectId": {
    "name": "obj_enemy",
    "path": "objects/obj_enemy/obj_enemy.yy",
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"targetX","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"targetY","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dividerX","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"8","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dividerY","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"3","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"going","filters":[],"listItems":[
        "\"up\"",
        "\"down\"",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"\"up\"","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"projectile","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"obj_dollar","varType":5,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_mogul",
    "path": "sprites/spr_mogul/spr_mogul.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}