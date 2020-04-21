/// @description
draw_set_font(fntText)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

var _x = 330;
var _y = y;
var xx = _x + string_width ("...");
var yy = _y + string_height("...");
var padding = 8; 
draw_set_colour(c_black)
draw_roundrect(_x - padding, _y - padding, xx + padding, yy + padding, false)
draw_set_colour(c_white)
draw_text(_x, _y, txt)
