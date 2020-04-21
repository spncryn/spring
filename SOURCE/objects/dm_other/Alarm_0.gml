// CASSIE
if global.last_dm_o.y > global.last_dm_p.y
{
if global.dm_choose == 4 and global.last_dm_o.dm == global.text_other_1
{
	global.options = 1;
	
	global.option_1 = "your"
	global.option_2 = "cute"
	
	instance_create_layer(x,y,"Messages",dm_option_1);
	instance_create_layer(x,y,"Messages",dm_option_2);
}

if global.dm_choose == 4 and global.last_dm_o.dm == global.text_other_5 and dm_cont.op2 == 1
{
	global.options = 1;
	
	global.option_1 = "nvm"
	global.option_2 = "show"
	
	instance_create_layer(x,y,"Messages",dm_option_1);
	instance_create_layer(x,y,"Messages",dm_option_2);
}

if global.dm_choose == 4 and global.last_dm_o.dm == global.text_other_7 and dm_cont.op1 == 1
{
	global.options = 1;
	
	global.option_3 = "cant"
	global.option_1 = "corona"
	
	instance_create_layer(x,y,"Messages",dm_option_3);
	instance_create_layer(x,y,"Messages",dm_option_1);
}
//////

//TESSA
if global.dm_choose == 5 and global.last_dm_o.dm == global.text_other_2 && global.c_variant = 0
{
	global.options = 1;
	
	global.option_1 = "no switch"
	global.option_2 = "no AC"
	
	instance_create_layer(x,y,"Messages",dm_option_1);
	instance_create_layer(x,y,"Messages",dm_option_2);
}

if global.dm_choose == 5 and global.last_dm_o.dm == global.text_other_1 && global.c_variant = 1
{
	global.options = 1;
	
	global.option_1 = "jk"
	global.option_2 = "double down"
	
	instance_create_layer(x,y,"Messages",dm_option_1);
	instance_create_layer(x,y,"Messages",dm_option_2);
}

//NINA
if global.dm_choose == 1 and global.last_dm_o.dm == global.text_other_1 and global.c_variant = 0
{
	global.options = 1;
	
	global.option_1 = "cats"
	global.option_2 = "dogs"
	
	instance_create_layer(x,y,"Messages",dm_option_1);
	instance_create_layer(x,y,"Messages",dm_option_2);
}
}