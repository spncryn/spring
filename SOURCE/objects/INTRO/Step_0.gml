/// @desc Animate transitions
/// @note This is generic and can be applied to any series of 
///       image_index-based animations.
ALPHA = clamp(ALPHA + (FADE_STATE * FADE_SPEED), 0, 1);
if ALPHA = 1 and image_index <  sprite_get_number(sprite_index) - 1 {
   FADE_STATE = -1
}

if ALPHA = 0 and FADE_STATE = -1 {
   FADE_STATE = 1
	if image_index <  sprite_get_number(sprite_index) - 1 image_index ++ 
}

if image_index =  sprite_get_number(sprite_index) - 1 {
	// Remove this line to turn off music
	if !audio_is_playing(ogg_breakbot) audio_play_sound(ogg_breakbot, 1, true)
	if TIMER > 0 TIMER -- else TIMER = 0
}

if TIMER = 0 {
	if ALPHA > 1 ALPHA += 0.01 else {
		if image_alpha > 0 image_alpha -= 0.01	else 
		instance_destroy()	
	}
}
