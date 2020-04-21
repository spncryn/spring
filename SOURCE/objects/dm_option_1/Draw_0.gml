//text bubble
xx = x + string_width(global.option_1);
yy = y + string_height(global.option_1);


if invert == 0
{
draw_set_colour(c_black);
var padding = 8; 
draw_roundrect(x - padding, y - padding, xx + padding, yy + padding, false)

//text
draw_set_font(fntText);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x,y,global.option_1);
}
else
{
draw_set_colour(c_black);
var padding = 8; 
draw_roundrect(x - padding, y - padding, xx + padding, yy + padding, true)

//text
draw_set_font(fntText);
draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x,y,global.option_1);
}