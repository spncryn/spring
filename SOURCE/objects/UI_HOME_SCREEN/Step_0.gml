/// @description Move the screen.
#region Centre to left (settings)
if LEFT {
	ACTIVE = true 
	if round(x) < 510 {
		x = lerp(x, 510, 0.2)
		if instance_exists(BT_LIKE) BT_LIKE.x += 20
		if instance_exists(BT_PASS) BT_PASS.x += 20
		if instance_exists(BT_INFO) BT_INFO.x += 20
		if instance_exists(UI_CARD) UI_CARD.x += 20
		BT_MESSAGES.visible = false
	} else {
		with BT_SETTINGS {
			image_index = 0	
		}
		with BT_MESSAGES {
			visible = true
			image_index = 3
		}
		if instance_exists(UI_CARD) UI_CARD.visible = false
		LEFT = false
		ACTIVE = false
		x = 510
	}
}
#endregion
#region Centre to right (messages)
if RIGHT {
	ACTIVE = true 
	if round(x) > -30 {
		x = lerp(x, -30, 0.2)
		if instance_exists(BT_LIKE) BT_LIKE.x -= 20
		if instance_exists(BT_PASS) BT_PASS.x -= 20
		if instance_exists(BT_INFO) BT_INFO.x -= 20
		if instance_exists(UI_CARD) UI_CARD.x -= 20
		BT_SETTINGS.visible = false
		with PT_PROFILE {
			var left = 112;
			if round(x) != left x = lerp(x, left, 0.2) else x = left
		}
		with messages_ceiling {
			var left = 112;
			if round(x) != left x = lerp(x, left, 0.2) else x = left
		}
	} else {
		with BT_SETTINGS {
			visible = true
			image_index = 2
		}
		with BT_MESSAGES {
			image_index = 1
		}
		if instance_exists(UI_CARD) UI_CARD.visible = false
		RIGHT = false
		ACTIVE = false
		x = -30
	}
}
#endregion
#region Push to centre
#region Left to centre 
if C_LEFT {
	ACTIVE = true
	if round(x) > 240 {
		x = lerp(x, 240, 0.2)
		if instance_exists(BT_LIKE) BT_LIKE.x -= 20
		if instance_exists(BT_PASS) BT_PASS.x -= 20
		if instance_exists(BT_INFO) BT_INFO.x -= 20
		if instance_exists(UI_CARD) UI_CARD.x -= 20
		if instance_exists(UI_CARD) UI_CARD.visible = true 
		BT_MESSAGES.visible = false
	} else {
		with BT_SETTINGS {
			image_index = 0	
		}
		with BT_MESSAGES {
			visible = true
			image_index = 1
		}
		C_LEFT = false
		ACTIVE = false
		x = 240
	}
	#endregion
}
#region Right to centre
if C_RIGHT {
	ACTIVE = true
	if round(x) < 240 {
		x = lerp(x, 240, 0.2)
		if instance_exists(BT_LIKE) BT_LIKE.x += 20
		if instance_exists(BT_PASS) BT_PASS.x += 20
		if instance_exists(BT_INFO) BT_INFO.x += 20
		if instance_exists(UI_CARD) UI_CARD.x += 20
		if instance_exists(UI_CARD) UI_CARD.visible = true 
		BT_SETTINGS.visible = false
		with PT_PROFILE {
			var right = 388;
			if round(x) != right x = lerp(x, right, 0.4) else x = right
		}
		with messages_ceiling {
			var right = 388;
			if round(x) != right x = lerp(x, right, 0.4) else x = right
		}
	} else {
		with BT_SETTINGS {
			visible = true
			image_index = 0
		}
		with BT_MESSAGES {
			image_index = 1
		}
		C_RIGHT = false
		ACTIVE = false
		x = 240
	}
}

#endregion
#endregion