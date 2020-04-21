/// @description Draw self

// Draw base card
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

// Draw stamp ("like/nope")
if STAMP draw_sprite_ext(uiStamps, STAMP_INDEX, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)