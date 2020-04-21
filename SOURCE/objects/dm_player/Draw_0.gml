draw_set_alpha(image_alpha);
//text bubble
//if string_width(dm) < 200
//{
	xx = x - string_width(dm);
	yy = y + string_height(dm);
	global.nextYposFromPlayer = string_height(dm)
//}
//else
//{
//	xx = string_width(dm)/2;
//	yy = y + string_height(dm)*2;
//}

draw_set_colour(c_black);

var padding = 8; 
draw_roundrect(x + padding, y - padding, xx - padding, yy + padding, false)

//text
draw_set_font(fntText);
draw_set_colour(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
//draw_text(x,y,dm);

//draw_text_ext(x,y,dm,string_height(dm),200);
draw_text(x,y,dm);