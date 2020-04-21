depth = 2;

scroll = 0;

if instance_number(dm_player) == 1 and instance_number(dm_other) == 0
{
	x = 345;
	y = 160;
}
else
{
	x = 345;
	y = global.last_dm_other.y+40;	
}

cur_y = y;

alarm[0] = random_range(room_speed*1,room_speed*5); //wait to for other to start typing

text = instance_number(dm_player);

switch (text)
   {
   case 1:
      dm = global.text_player_1;
      break;
   case 2:
      dm = global.text_player_2;
      break;
   case 3:
      dm = global.text_player_3;
      break;
   case 4:
      dm = global.text_player_4;
      break;
   case 5:
      dm = global.text_player_5;
      break;
   case 6:
      dm = global.text_player_6;
      break;
   case 7:
      dm = global.text_player_7;
      break;
   case 8:
      dm = global.text_player_8;
      break;
   case 9:
      dm = global.text_player_9;
      break;
   case 10:
      dm = global.text_player_10;
      break;
   case 11:
      dm = global.text_player_11;
      break;
   case 12:
      dm = global.text_player_12;
      break;
   case 13:
      dm = global.text_player_13;
      break;
   case 14:
      dm = global.text_player_14;
      break;
   case 15:
      dm = global.text_player_15;
      break;
   case 16:
      dm = global.text_player_16;
      break;
	case 17:
      dm = global.text_player_17;
      break;
   }
   
if (instance_number(dm_player) == 3		and dm_cont.op1 == 1)
or (instance_number(dm_player) == 15	and dm_cont.op2 == 1)
or (instance_number(dm_player) == 8		and dm_cont.op3 == 1)
{
	global.stopconvo = 1; 
}
 
if (instance_number(dm_player) == 17 and dm_cont.op1 == 1)
{
	global.stopconvo = 1; //PHONE DIES
}

// Stores the last-sent message
if global.profilepic == 0
{
global.dm_preview_self0 = dm;
}

if global.profilepic == 1
{
global.dm_preview_self1 = dm;
}

if global.profilepic == 2
{
global.dm_preview_self2 = dm;
}

if global.profilepic == 3
{
global.dm_preview_self3 = dm;
}

if global.profilepic == 4
{
global.dm_preview_self4 = dm;
}

if global.profilepic == 5
{
global.dm_preview_self5 = dm;
}

// Create endscreen.
if dm == " " {
	instance_destroy()
	instance_create_layer(0, 0, "Elements", FAIL_STATE)
}
	