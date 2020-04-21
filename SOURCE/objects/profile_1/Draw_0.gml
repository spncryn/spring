/// @description
draw_self();

draw_set_halign(fa_left)
draw_set_color(c_black);

if (global.dm_player_history0 > global.dm_other_history0)
{
	var ellipses = ""
	if string_length(global.dm_preview_self0) > 15 ellipses = "..." else ellipses = "";
	var cutoff = string_copy(global.dm_preview_self0, 0, 14) + ellipses;
   draw_sprite(spr_arrow,0,x+86,y + 6);
   draw_text(x+112,y,cutoff);
}
else
{
	var ellipses = ""
	if string_length(global.dm_preview_other0) > 15 ellipses = "..." else ellipses = "";	
	var cutoff = string_copy(global.dm_preview_other0, 0, 14) + ellipses;
   draw_text(x + 86,y,cutoff);
}