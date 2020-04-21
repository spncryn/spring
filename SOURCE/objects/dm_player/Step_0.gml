if y > 500
{
	global.scroll_up = 1;
	
	if(dm_cont.alarm[1] == -1)
	{
		dm_cont.alarm[1]= dm_cont.rs*5; 
	}
}


if global.scroll_up == 1 and scroll == 0
{
	y = lerp(y,cur_y-340,.06) //originally 350
	
	if(alarm[1] == -1)
	alarm[1]=room_speed*6;
}

if global.scroll_up == 1 and scroll == 1
{
	y = lerp(y,-560,.06) 
}