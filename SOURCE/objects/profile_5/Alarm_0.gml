if instance_number(dm_player) < global.dm_player_history4
{
	global.last_dm_player = instance_create_layer(x,y,"Messages",dm_player);
	bottom_page.alarm[0] = 1;
	global.no = 1;
}
			
if instance_number(dm_other) < global.dm_other_history4
{
	global.last_dm_other = instance_create_layer(x,y,"Messages",dm_other);
	bottom_page.alarm[0] = 1;
	global.no = 1;
}	

if  (instance_number(dm_player) == global.dm_player_history4)
and (instance_number(dm_other) == global.dm_other_history4)
{
	global.no = 0;
	
		instance_destroy(PT_PROFILE)
		instance_destroy(messages_ceiling)
}
			
alarm[1] = 10;