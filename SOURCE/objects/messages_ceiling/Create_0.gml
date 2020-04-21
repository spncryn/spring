/// @description
global.dm_history = 1;
global.dm_convo   = 0;
global.last_profile = self;
global.add_profile = 0;
global.profile_number = 1;
//random_set_seed(date_current_datetime());

messages_ceiling.x = x; //change once messages_ceiling isn't default #1
messages_ceiling.y = y;

if global.prof1_list == 1
{
	global.last_profile = instance_create_layer(global.last_profile.x,global.last_profile.y+86,"Messages",profile_1);
//	profile_1.x = global.prof1_x;
//	profile_1.y = global.prof1_y;
}

if global.prof2_list == 1
{
	global.last_profile = instance_create_layer(global.last_profile.x,global.last_profile.y+86,"Messages",profile_2);
//	profile_2.x = global.prof2_x;
//	profile_2.y = global.prof2_y;
}

if global.prof3_list == 1
{
	global.last_profile = instance_create_layer(global.last_profile.x,global.last_profile.y+86,"Messages",profile_3);
//	profile_3.x = global.prof3_x;
//	profile_3.y = global.prof3_y;
}

if global.prof4_list == 1
{
	global.last_profile = instance_create_layer(global.last_profile.x,global.last_profile.y+86,"Messages",profile_4);
//	profile_4.x = global.prof4_x;
//	profile_4.y = global.prof4_y;
}

if global.prof5_list == 1
{
	global.last_profile = instance_create_layer(global.last_profile.x,global.last_profile.y+86,"Messages",profile_5);
//	profile_5.x = global.prof5_x;
//	profile_5.y = global.prof5_y;
}

if global.prof6_list == 1
{
	global.last_profile = instance_create_layer(global.last_profile.x,global.last_profile.y+86,"Messages",profile_6);
//	profile_6.x = global.prof6_x;
//	profile_6.y = global.prof6_y;
}

// Create older profiles (inaccessible)
for (var i = 0; i < 11; i++) {
	var profile;
	switch i {
		case 2 : profile = "profile_old_1"     break;
		case 3 : profile = "profile_old_2"     break;
		case 4 : profile = "profile_old_3"     break;
		case 6 : profile = "profile_old_4"     break;
		default: profile = "profile_suspended" break;
	}
	
	profiles = instance_create_layer(x, y + 86 * i, "Messages", asset_get_index(profile)) 
	profiles.y -= 86*global.cur_profile;
}

// 