/// @description Insert description here
// You can write your code in this editor
if !DESTROY {
	if startmovement {
		if fadeAlpha < 1 fadeAlpha += 0.02 else fadeAlpha = 1
	}
} else {
	if fadeAlpha > 0 fadeAlpha -= 0.04 else {
		fadeAlpha = 0
		instance_destroy(UI_BUBBLE)
		instance_destroy(UI_MATCH_SCREEN)	
		instance_destroy(PT_BTN_MATCH)
	}
}

if startmovement and !hasmoved {
	hasmoved = true
	instance_create_depth(x      , y + 208, 1, UI_MATCH_SEND)
	instance_create_depth(x      , y + 248, 1, UI_MATCH_EXIT)
	instance_create_depth(x - 256, y + 80 , 1, PLAYER_BUBBLE)
	instance_create_depth(x + 256, y + 80 , 1, MATCH_BUBBLE )
}

timer ++ //This creates a slight delay before things happen
if timer >= 2 startmovement = true