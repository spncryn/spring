/// @cred https://github.com/adenhumbert/shuffle-deck-and-map-cards
pool = argument0;

//TODO: error checking, better randomization, cards remaining,
// confirm shuffle, confirm random, confirm deck integrity.
//check if should be shuffling currently, if flipping a card we want to make sure we delete the
//correct value.

randomise()

ds_list_shuffle(pool)

var cards_in_deck;
cards_in_deck = ds_list_size(pool);

for (var i = 0; i <= cards_in_deck; i+=1) {
    card = ds_list_find_value(pool, i);
    show_debug_message(string(card));
}

return;