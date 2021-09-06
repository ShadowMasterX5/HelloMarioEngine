/// @description Begin attack

//Punch sound
audio_play_sound(snd_stomp2,0,0)

//Mario grunt sound
audio_play_sound(choose(snd_hah,snd_ya,snd_yah),0,0)

//Ground attack
if instance_exists(obj_mario)
and obj_mario.state < 2
and not keyboard_check(vk_up)
{
    image_index = 0
    attack = 1
    alarm[2] = 4
}

//Air attack
else
{
    attack = 2
    combo = 2
    image_index = 5

    //Thrust Mario
    with obj_mario
    {

        //Forwards
        hspeed = 3*direct

        //Upwards
        if keyboard_check(vk_up)
        {
            vspeed = -4
            y--
        }

        //Downwards
        else if keyboard_check(vk_down)
            vspeed = 4

        //Airdash
        else
        {
            vspeed = 0
            other.airdash = 1

            //Forward thrust airdash
            if (direct = 1 and keyboard_check(vk_right))
            or (direct = -1 and keyboard_check(vk_left))
                other.alarm[6] = 25

            //Normal airdash
            else
                other.alarm[6] = 10

        }

    }

}

//Delay
delay = 1

//Reset delay
alarm[5] = 30

//Stop certain alarms
alarm[1] = 0
alarm[3] = 0
alarm[4] = 0

