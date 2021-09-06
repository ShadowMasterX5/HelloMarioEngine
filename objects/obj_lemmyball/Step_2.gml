/// @description Lemmy ball logic

//With Lemmy
with follow
{

    //Follow Lemmy
    other.x = x-8-6*direct*(ready==0)

    //Animate based on speed
    other.image_speed = hspeed/6

}

//Snap solidtop to position
mytop.x = x
mytop.y = round(y)

