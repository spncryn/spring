if global.options == 0 {
	if op1 == 0 and op2 == 0 and op3 == 0
	{
		global.cur_op = 0;
	}
	else
	{
		if op1 == 1
		{
		global.cur_op = 1;
		}
	
		if op2 == 1
		{
		global.cur_op = 2;
		}
	
		if op3 == 1
		{
		global.cur_op = 3;
		}
	}
	
	if global.stopconvo == 0
	{
		global.stopconvo = 1; 
	}
}