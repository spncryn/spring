/// @description Draw animation

// Draw fade colour
draw_set_color(c_black)
draw_set_alpha(ALPHA)
draw_rectangle(0, 0, room_width, room_height, false)

// Draw text
draw_set_font(fntEnding)
draw_set_color(c_white)
draw_set_alpha(TEXT_ALPHA)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_text_ext_transformed(room_width / 2 - 80, room_height / 2, TEXT, 16, 80, 2, 2, 0)