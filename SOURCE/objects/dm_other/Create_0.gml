depth = 2;

scroll = 0;

dm_cont.alarm[2] = 60; // Amount of time before the player can type, don't fuck with

x = 140;
y = global.last_dm_player.y+40+global.nextYposFromPlayer; //add player string height

global.nextYposFromPlayer = 0 //reset height to 0

cur_y = y;
text = instance_number(dm_other);

alarm[0] = 30;

//option_1 = 0;
//option_2 = 0;

switch (text)
   {
   case 1:
      dm = global.text_other_1;
      break;
   case 2:
      dm = global.text_other_2;
      break;
   case 3:
      dm = global.text_other_3;
      break;
   case 4:
      dm = global.text_other_4;
      break;
   case 5:
      dm = global.text_other_5;
      break;
   case 6:
      dm = global.text_other_6;
      break;
   case 7:
      dm = global.text_other_7;
      break;
   case 8:
      dm = global.text_other_8;
      break;
   case 9:
      dm = global.text_other_9;
      break;
   case 10:
      dm = global.text_other_10;
      break;
   case 11:
      dm = global.text_other_11;
      break;
   case 12:
      dm = global.text_other_12;
      break;
   case 13:
      dm = global.text_other_13;
      break;
   case 14:
      dm = global.text_other_14;
      break;
   case 15:
      dm = global.text_other_15;
      break;
   case 16:
      dm = global.text_other_16;
      break;
	case 17:
      dm = global.text_player_17;
      break;
   }

alarm[0] = 30;

// Store last-sent message
if global.profilepic == 0
{
global.dm_preview_other0 = dm;
}

if global.profilepic == 1
{
global.dm_preview_other1 = dm;
}

if global.profilepic == 2
{
global.dm_preview_other2 = dm;
}

if global.profilepic == 3
{
global.dm_preview_other3 = dm;
}

if global.profilepic == 4
{
global.dm_preview_other4 = dm;
}

if global.profilepic == 5
{
global.dm_preview_other5 = dm;
}

// Create endscreen.
if dm == " " {
	instance_destroy()
	instance_create_layer(0, 0, "Elements", FAIL_STATE)
}
	
if !audio_is_playing(wav_message) audio_play_sound(wav_message, 1, false)