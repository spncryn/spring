if global.options == 0 and global.stopconvo == 0 and global.no == 0
{
		if instance_exists(dm_other)
		{
			if global.last_dm_o.y < y
			{
				instance_create_layer(0,0,"Messages",obj_typing_other);
			}
		}
		else
		{
			instance_create_layer(0,0,"Messages",obj_typing_other);
		}
}
else
{
	if global.no == 0
	{
		if instance_exists(dm_other)
		{
			if global.last_dm_o.y < y
			{
				alarm[2] = 60;
			}
		}
		else
		{
			alarm[2] = 60;
		}
	}
}