/// @description
draw_set_font(fntText)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

var _x = 140;
var _y = y;
var xx = x + string_width ("...");
var yy = y + string_height("...");
var padding = 8; 
draw_roundrect(x - padding, y - padding, xx + padding, yy + padding, true)
draw_text(_x, _y, txt)