txt = "   "
alarm[1] = 12
visible = true
depth = 1;
dm_cont.init_dm_other = 0
dm_cont.init_dm = 1;

if instance_number(dm_player) == 0 and instance_number(dm_other) == 0
{
	x = 345;
	y = 160;
}
else
{
	x = 345;
	y = global.last_dm_other.y+40;	
}

alarm[0] = random_range(room_speed*1,room_speed*3);