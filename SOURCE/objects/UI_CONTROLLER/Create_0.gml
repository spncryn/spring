/// @description Init
/// @link https://www.reddit.com/r/gamemaker/comments/6eai42/help_draggable_objects_issue/did23hv/?st=J5RS4NAG&sh=869c8985
globalvar GENEVA;
GENEVA = font_add_sprite_ext(F_GENEVA,  "0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.:,;(!?)'|[]<>+-/_", false, -1);

// Number of total matches
global.MATCHES = 0

// Stores current card values
global.currentname = ""
global.currentindex = 0

/// @cred https://github.com/adenhumbert/shuffle-deck-and-map-cards

// Create pool of potential profiles, and shuffle it
pool = -1
pool = init_pool()
//_seed = date_current_datetime()
//random_set_seed(_seed)
randomize()
global.c_variant  = irandom_range(0, 2)
shuffle_pool(pool)

// Generate all available profiles randomly
for (var i = 0; i <= ds_list_size(pool) - 1; i++) {
   var profile = ds_list_find_value(pool,i);
	init_partner(profile)
	
   new_profile = instance_create_layer(240, 288, "Elements", UI_CARD)
	new_profile.image_index = global.currentindex
	new_profile.depth = i + 2
}

PASS = false // "pass" state for active profile
LIKE = false // "like" state for active profile

// These variables all have to do with dragging the card
drag_object = noone
xrelative = 0
yrelative = 0

// Handle depth for mouse-based interactions with cards
start_depth = 2 // Starting depth of 2 (so that it appears beneath the successful match screen)
with UI_CARD {
	depth = other.start_depth
	other.start_depth ++
	instance_create_layer(x + sprite_width - 48, 0, "Elements", BOUND)
	instance_create_layer(x - sprite_width + 48, 0, "Elements", BOUND)
}

