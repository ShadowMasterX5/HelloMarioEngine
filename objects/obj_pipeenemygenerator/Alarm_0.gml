/// @description Generate enemies

//Select an enemy
if enemy = 1
    myenemy = obj_goomba
else if enemy = 2
    myenemy = obj_koopa
else if enemy = 3
    myenemy = obj_spiny
else if enemy = 4
    myenemy = choose(obj_goomba,obj_koopa,obj_spiny)

//If there are less than six enemies
if instance_number(myenemy) < 6
{

    //Make enemy
    newenemy = instance_create(x+8+type,y+16,myenemy)

    //Make enemy move
    newenemy.hspeed = 0.5*type

    //Deal with goomba's weirdness
    if myenemy = obj_goomba
        newenemy.x -= 8

    //Change depth to behind tiles
    newenemy.depth = 10

    //Change depth back later
    alarm[1] = 30

    //Maintain y value
    alarm[2] = 1

}

//Generate more
alarm[0] = 200

