//DIALOGUE SYSTEM DESIGNED BY JACOB "ITTA" WILLIAMS, VERY SLIGHTLY FIXED BY NATE

depth = 1;
rs				= room_speed;

global.stopconvo = 0;

global.mb				= mouse_check_button_pressed(mb_left);
global.mb_release		= mouse_check_button_released(mb_left);
init_dm			= 0;
init_dm_other	= 1;

text_player		= 0;

//global.dm_choose	= 0; //change to choose
//choose(0, 1, 2); // Which variation of the conversations to choose from
global.scroll_up	= 0;
global.options		= 0;
global.option1		= 0;
global.option2		= 0;
global.option3		= 0;

op1 = 0;
op2 = 0;
op3 = 0;

//Positioning Set Up
global.nextYposFromPlayer = 0;

//convo 1
global.text_player_2	= 0;
global.text_other_5		= 0;
global.text_other_7		= 0;
global.text_player_3	= 0;
global.text_player_15	= 0;
global.text_player_8	= 0;
global.text_player_17	= 0;

//convo 2
global.text_other_2		= 0;
global.text_player_4	= 0;
global.text_player_7	= 0;