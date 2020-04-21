/// @description Movement
if !UI_MATCH_SCREEN.DESTROY x = lerp(x, UI_MATCH_SCREEN.x - 64, 0.08) else {
	x -= 5
	image_alpha -= 0.1
}