draw_set_alpha(image_alpha);
xx = x + 10 + string_width(dm);
yy = y + string_height(dm);

draw_set_colour(c_black);
var padding = 8; 
draw_roundrect(x + 10 - padding, y - padding, xx + padding, yy + padding, true)

//text
draw_set_font(fntText);
draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top );

//draw_text_ext(x,y,dm,string_height(dm),200);
draw_text(x + 10,y,dm);

draw_sprite_ext(spr_profile_small,global.profilepic,x-14,y+8,.2,.2,0,c_white,1); 