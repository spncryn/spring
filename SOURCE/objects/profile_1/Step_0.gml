event_inherited()
y = messages_ceiling.y + dis

if global.dm_history == 1
{
if mouse_check_button_pressed(mb_left)
{
    if collision_point(mouse_x, mouse_y, id, true, false) 
	{ 
		global.dm_history	= 0;
		global.dm_convo	= 1;
		global.profilepic = image_index
	//	global.move_profiles = 0;
		const_var.alarm[0] = 1;
		
		if !instance_exists(dm_cont)
		{
			instance_create_layer(x,y,"Messages",dm_cont); 
			global.dm_choose = 0;
			
			alarm[0] = 10; //RECREATE CONVERSATION
		}
		
		global.stopconvo = 0;
    }
}
}