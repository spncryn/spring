/// @description Draw animation
draw_self()

// Draw fade colour
draw_set_color(c_black)
draw_set_alpha(1 - ALPHA)
draw_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2, false)
draw_set_color(c_white)
draw_set_alpha(1)