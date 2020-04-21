/// @desc This adds a new conversation to the messages history
///       after a new match.
global.choose_profile = asset_get_index("profile_" + string(global.currentindex + 1));
const_var.alarm[0] = 1;
global.add_profile = 1;
global.move_profiles = 1;
global.profile_number += 1;