/// @description
if mouse_wheel_up  () y += 20;
if mouse_wheel_down() y -= 20;

#region Top of message history
var top;
if instance_number(profile_1) > 0 
or instance_number(profile_2) > 0 
or instance_number(profile_3) > 0
or instance_number(profile_4) > 0 
or instance_number(profile_5) > 0 
or instance_number(profile_5) > 0 
	top = 94 
else 
	top = 186
if y > top
{
	global.clamptop = 1;
}
else
{
	global.clamptop = 0;
}

if global.clamptop == 1
{
	y = lerp(y,top,.1);
}
#endregion
#region Bottom of message history
if y < -380
{
	global.clampbottom = 1;
}
else
{
	global.clampbottom = 0;
}

if global.clampbottom == 1
{
	y = lerp(y,-380,.1);
}
#endregion
if global.add_profile == 1
{
	global.last_profile = instance_create_layer(global.last_profile.x,global.last_profile.y + 86,"Messages",global.choose_profile);

	global.cur_profile += 1;
	
	global.add_profile = 0;
}