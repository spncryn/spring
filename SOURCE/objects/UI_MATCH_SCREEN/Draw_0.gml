/// @description Draw match screen.
var xx = 102;
var yy = 96;

draw_set_colour(c_black)
draw_set_alpha(fadeAlpha)

// Draw background
draw_rectangle(xx, yy - 12, xx + 270, yy + 480, false)

// Draw name
draw_set_font(fntText)
draw_set_colour(c_white)
draw_set_halign(fa_center)
draw_text(240, 190, "You've matched with " + global.currentname + "!\nTime to get the conversation\nrolling...")

// Draw elements
with UI_BUBBLE event_perform(ev_draw, 0)
with UI_MATCH_SEND draw_self()
with UI_MATCH_EXIT draw_self()
draw_sprite_ext(uiMatchText, 0, x, y - 96, 1, 1, 0, -1, fadeAlpha)