/// @description Flip the cards that were flipped in the previous game

//For all cards
with obj_card
{

    //If the card was flipped in a previous game
    if ds_map_exists(global.cardgame,string(id))
    {

        //Flip the card
        sprite_index = spr_cardgame_cards

        //Choose the correct card image
        image_index = mycard

    }

}

