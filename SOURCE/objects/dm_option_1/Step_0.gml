xx = x + string_width(global.option_1);
yy = y + string_height(global.option_1);

var padding = 8; 
if point_in_rectangle(mouse_x, mouse_y, x - padding, y - padding, xx + padding, yy + padding)
{
	invert = 1;
	
	if global.mb and global.stopconvo == 0
	{
		global.option1 = 1;
	
		//init_dm = 1;		
		//init_dm_other = 0;
	}
	
	if global.mb_release and global.stopconvo == 0
	{
		instance_create_layer(x,y,"Messages",obj_typing_self);
		
		global.options = 0;
		
		init_dm = 1;
		init_dm_other = 0;
		
		instance_destroy(dm_option_2);
		instance_destroy(dm_option_3);
		instance_destroy();
	}
}
else
{
	invert = 0;
}