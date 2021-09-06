/// @description Make Mario take damage!

//...but only if he is not walking on it with a shoe
if global.yoshi != 2
or other.y > y-11
    with other event_user(0)

