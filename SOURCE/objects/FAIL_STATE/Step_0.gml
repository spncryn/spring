/// @desc Animate transitions
/// @note This is generic and can be applied to any series of 
///       image_index-based animations.
ALPHA = clamp(ALPHA + (FADE_STATE * FADE_SPEED), 0, 1);
if ALPHA = 0 {
   FADE_STATE = 1
}

if ALPHA = 1 {
	if TIMER > 0 TIMER -- else {
		if TEXT_ALPHA < 1 TEXT_ALPHA += 0.01 else {
			TEXT_ALPHA = 1
			if keyboard_check_pressed(vk_anykey)
			or mouse_check_button_pressed(mb_any) 
				game_end()
		}
	}
}
