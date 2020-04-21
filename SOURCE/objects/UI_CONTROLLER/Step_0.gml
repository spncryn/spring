/// @description Interact with UI elements
/// @link https://www.reddit.com/r/gamemaker/comments/6eai42/help_draggable_objects_issue/did23hv/?st=J5RS4NAG&sh=869c8985
if instance_exists(INTRO) 
or instance_exists(FAIL_STATE) exit

if !instance_exists(UI_MATCH_SCREEN)
and instance_number(UI_CARD) >= 0 {
#region Like/pass
#region Click to drag profile cards
if mouse_check_button_pressed(mb_left) {
	#region Close user profile with mouse
	with UI_INFO {
		if !point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_width / 2, x + sprite_width / 2, y + sprite_height / 2)
			continue;
		ACTIVE = false 
	}
	#endregion
	with UI_CARD {
		if !point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_width / 2, x + sprite_width / 2, y + sprite_height / 2)
			continue;

		// New window is above previous window
		if other.drag_object = noone 
		or other.drag_object.depth > depth {
			other.xrelative = x - mouse_x
			other.yrelative = y - mouse_y
			other.drag_object = id
		}
	}
	
	if drag_object != noone {
		shift_depth(drag_object, UI_CARD)
	}
}
#endregion
#region Process like/pass
#region Mouse
if mouse_check_button_released(mb_left) {
	with drag_object {
		var targetx = 240;
		if x > targetx + sprite_width / 2 + 24 {
			LIKE = true
		} else 
		if x < targetx - sprite_width / 2 - 24 {
			PASS = true
		} else {
			RESET = true
		}
	}
	
	drag_object = noone
	xrelative = 0
	yrelative = 0
}
#endregion
#region Keyboard
with UI_CARD {
	var active = true;
	var current;
	for (var i = 0; i < instance_number(UI_CARD); i++) {
		card[i] = instance_find(UI_CARD, i)
		if active {
			current = card[i]
			active  = false
		}
		if card[i].depth < current.depth {
			current = card[i]
			global.currentindex = current.image_index
		}
	}
	with current {
		if ACTIVE {
			if keyboard_check_pressed(vk_left ) PASS = true
			if keyboard_check_pressed(vk_right) LIKE = true	
			#region Open up user profile
			if !instance_exists(UI_INFO) {
				if keyboard_check_pressed(vk_up) INFO = true	
			} 
			#endregion
		}
	}
}
#endregion
#region Buttons
if !instance_exists(UI_INFO) {
	var btn = instance_position(mouse_x, mouse_y, PT_BUTTON);
	if position_meeting(mouse_x, mouse_y, PT_BUTTON) {
		with btn {
			if mouse_check_button(mb_left) {
				if object_index = BT_SETTINGS
				or object_index = BT_MESSAGES {
					if image_index = 2 or image_index = 3 exit
				} else {
					image_xscale = 0.9
					image_yscale = image_xscale 
				}
			} else {
				if mouse_check_button_released(mb_left) {
					#region Find current active user profile
					var active = true;
					var current;
					for (var i = 0; i < instance_number(UI_CARD); i++) {
						card[i] = instance_find(UI_CARD, i)
						if active {
							current = card[i]
							active  = false
						}
						if card[i].depth < current.depth {
							current = card[i]
							global.currentindex = current.image_index
						}
					}
					#endregion
					// Main screen
					if object_index = BT_LIKE current.LIKE = true else
					if object_index = BT_PASS current.PASS = true else
					if object_index = BT_INFO current.INFO = true else
					
					// Top bar
					if object_index = BT_SETTINGS {
						if UI_HOME_SCREEN.x = 510
							UI_HOME_SCREEN.C_LEFT = true else 
						if UI_HOME_SCREEN.x = 240
							UI_HOME_SCREEN.LEFT = true
					} else
					if object_index = BT_MESSAGES {
						if UI_HOME_SCREEN.x = -30 {
							if global.dm_convo = 1 {
								with dm_cont save_conversation()
								with obj_typing_self visible = false
							} else UI_HOME_SCREEN.C_RIGHT = true 
						} else
						if UI_HOME_SCREEN.x = 240
							UI_HOME_SCREEN.RIGHT = true
					}
				}
				if object_index = BT_SETTINGS
				or object_index = BT_MESSAGES {
					if image_index = 2 or image_index = 3 exit
				} else {
					if image_xscale < 1.1 image_xscale += 0.1
				}
				image_yscale = image_xscale
			}
		}
	} else {
		with PT_BUTTON {
			if image_xscale > 1 image_xscale -= 0.1
			image_yscale = image_xscale
		}
	}
}
#endregion
#endregion
#region Apply visual effects
#region "Nope"/"Like" stamp effect 
with UI_CARD {
	if x > 240 + 24 {
		STAMP = true
		STAMP_INDEX = 0
//		image_blend = c_green
	} else
	if x < 240 - 24 {
		STAMP = true
		STAMP_INDEX = 1
//		image_blend = c_red
	}
	else {
		STAMP = false
//		image_blend = c_white
	}
}
#endregion
#endregion
#endregion
}

#region "It's a match!" screen
var btn = instance_position(mouse_x, mouse_y, PT_BTN_MATCH);
if position_meeting(mouse_x, mouse_y, PT_BTN_MATCH) {
	with btn {
		image_index = 1
		if mouse_check_button(mb_left) {
			image_xscale = 0.9
			image_yscale = image_xscale 
		} else {
			if mouse_check_button_released(mb_left) {
				if image_xscale < 1.1 image_xscale += 0.1
				image_yscale = image_xscale
				if UI_MATCH_SCREEN.fadeAlpha = 1 {
					if object_index = UI_MATCH_EXIT {
						with UI_MATCH_SCREEN DESTROY = true 
						add_new_conversation()
					} else 
					if object_index = UI_MATCH_SEND {
						with UI_MATCH_SCREEN DESTROY = true 
						add_new_conversation()
						UI_HOME_SCREEN.RIGHT = true
					}
				}
			}
		}
	}
} else {
	with PT_BTN_MATCH {
		image_index = 0
		if image_xscale > 1 image_xscale -= 0.1
		image_yscale = image_xscale
	}
}
#endregion

#region Get values
switch global.currentindex {
	case 0 : global.currentname = "ali"    break;
	case 1 : global.currentname = "Nina"   break;
	case 2 : global.currentname = "hayley" break;
	case 3 : global.currentname = "Mia"    break;
	case 4 : global.currentname = "Cassie" break;
	case 5 : global.currentname = "Tessa"  break;
}
#endregion

// Special ending
if UI_CARD = 0 {
	instance_create_layer(0, 0, "Elements", FAIL_STATE)	
}