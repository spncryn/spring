/// @description Interaction
if INFO {
	ACTIVE = false 
	if !instance_exists(UI_INFO) {
		BIO = instance_create_layer(x, y, "Elements", UI_INFO)
		BIO.image_index = global.currentindex
		BIO.ACTIVE = true
		INFO = false
		ACTIVE = true
	} 
}

if PASS {
	ACTIVE = false
	if round(x) > -30 x = lerp(x, -60, 0.1) else {
		instance_destroy()
		PASS = false
		ACTIVE = true
	}
}

if LIKE {
	ACTIVE = false
	if round(x) < room_width + 30 x = lerp(x, room_width + 60, 0.1) else {
		instance_destroy()	
		LIKE = false
		ACTIVE = true
		if irandom(3) = 2 {
			global.MATCHES ++
			instance_create_depth(240, 240, 1, UI_MATCH_SCREEN)
		}
	}
}

if RESET {
	ACTIVE = false
	if round(x) != 240 and round(y) != 288 {
		x = lerp(x, 240, 0.1)
		y = lerp(y, 288, 0.1)
	} else {
		x = 240
		y = 288
		RESET = false
		ACTIVE = true
	}
}

#region Apply image angle shifts
var xx = 240; // Starting x-value for the cards
image_angle = (xx - x) / 15
if abs(image_angle) <= 1 image_angle = 0
#endregion

