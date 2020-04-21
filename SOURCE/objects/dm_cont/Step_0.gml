global.mb				= mouse_check_button_pressed(mb_left);
global.mb_release		= mouse_check_button_released(mb_left);

if global.scroll_up == 0 and global.stopconvo == 0
{
if global.mb and init_dm_other == 1 and global.options == 0
{
	if ((instance_exists(dm_player) and instance_exists(dm_other))
	or (!instance_exists(dm_player) and !instance_exists(dm_other)))
	and (!instance_exists(obj_typing_self) and !instance_exists(obj_typing_other))
	and alarm[2] <= 0
	{
		if instance_exists(dm_other)
		{
			if global.last_dm_o.y > global.last_dm_p.y
			{
				instance_create_layer(0,0,"Messages",obj_typing_self); //create latest player dm
				init_dm = 1;
				init_dm_other = 0;
			}
		}
		else
		{
			instance_create_layer(0,0,"Messages",obj_typing_self); //create latest player dm
			init_dm = 1;
			init_dm_other = 0;
		}
	}
}

if global.mb_release and init_dm == 1 and global.options == 0
{
	//init_dm			= 0;
	
	//if(alarm[0] == -1)
	//{
	//	alarm[0]= rs*1; //this can be changed to make longer pauses
	//}
}
}

if global.option1 == 1 or global.cur_op == 1
{
	op1 = 1;
	op2 = 0;
	op3 = 0;
	global.option1 = 0;
}


if global.option2 == 1 or global.cur_op == 2
{
	op1 = 0;
	op2 = 1
	op3 = 0;
	global.option2 = 0;
}

if global.option3 == 1 or global.cur_op == 3
{
	op1 = 0;
	op2 = 0
	op3 = 1;
	global.option3 = 0;
}

// Get conversations.
get_messages()

if global.scroll_up == 0 and global.stopconvo == 0
{
if global.mb and init_dm_other == 1 and global.options == 1
{
	
	 //create latest player dm
	
	//init_dm = 1;
	//init_dm_other = 0;
}

if global.mb_release and init_dm == 1 and global.options == 1
{
	//init_dm			= 0;
	
	if(alarm[0] == -1)
	{
		alarm[0]= rs*1; //this can be changed to make longer pauses
	}
}
}

//cant go back to history if option is up
if keyboard_check_pressed(vk_escape) save_conversation()

// Stop the conversation, return to message history
if global.stopconvo == 1
{
	image_alpha = 0
	
	if instance_exists(dm_player)
	{
		dm_player.image_alpha = 0;
	}
	
	if instance_exists(dm_other)
	{
		dm_other.image_alpha  = 0;
	}
	
	if !instance_exists(messages_ceiling) {
		instance_create_layer(x,y,"Messages",messages_ceiling);
		switch global.dm_choose {
			case 0 :	global.dm_history0		  = global.dm_choose
						global.dm_player_history0 = instance_number(dm_player);
						global.dm_other_history0  = instance_number(dm_other);
						global.rememberbranch0	  = global.cur_op;
						break;
			case 1 :	global.dm_history1		  = global.dm_choose
						global.dm_player_history1 = instance_number(dm_player);
						global.dm_other_history1  = instance_number(dm_other);
						global.rememberbranch1	  = global.cur_op;
						break;
			case 2 :	global.dm_history2		  = global.dm_choose
						global.dm_player_history2 = instance_number(dm_player);
						global.dm_other_history2  = instance_number(dm_other);
						global.rememberbranch2    = global.cur_op;
						break;
			case 3 :	global.dm_history3   	  = global.dm_choose
						global.dm_player_history3 = instance_number(dm_player);
						global.dm_other_history3  = instance_number(dm_other);
						global.rememberbranch3	  = global.cur_op;
						break;
			case 4 :	global.dm_history4		  = global.dm_choose
						global.dm_player_history4 = instance_number(dm_player);
						global.dm_other_history4  = instance_number(dm_other);
						global.rememberbranch4	  = global.cur_op;
						break;
			case 5 :	global.dm_history5		  = global.dm_choose
						global.dm_player_history5 = instance_number(dm_player);
						global.dm_other_history5  = instance_number(dm_other);
						global.rememberbranch5	  = global.cur_op;
						break;
		}
		instance_destroy(obj_typing_self);
		instance_destroy(obj_typing_other);
		instance_destroy(dm_player);
		instance_destroy(dm_other);
		instance_destroy(dm_cont);
	}
}
else
{
	if instance_exists(dm_player)
	{
		dm_player.image_alpha = 1;
	}
	
	if instance_exists(dm_other)
	{
		dm_other.image_alpha  = 1;
	}
}



if instance_exists(dm_player) and instance_exists(dm_other)
{
	if global.last_dm_p.y > global.last_dm_o.y
	{
		//init_dm = 1;
		//init_dm_other = 0;
	
		global.last_dm_p.alarm[2] = 60;	
	}
	else
	{
		//init_dm = 0;
		//init_dm_other = 1;
	}
}
