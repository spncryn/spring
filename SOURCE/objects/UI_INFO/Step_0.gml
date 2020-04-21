/// @description Move in and out of view.
if ACTIVE {
	y = lerp(y, 320, 0.1)
	if image_alpha < 1 image_alpha += 0.05 else image_alpha = 1
	if keyboard_check_pressed(vk_down) ACTIVE = false
} else {
	if y < room_height + 120 {
		y += 10
		image_alpha -= 0.1
	} 
	if image_alpha <= 0 {
		instance_destroy()
	}
}
