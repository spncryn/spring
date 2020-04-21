/// @desc Handle dragging
/// @link https://www.reddit.com/r/gamemaker/comments/6eai42/help_draggable_objects_issue/did23hv/?st=J5RS4NAG&sh=869c8985
if (mouse_check_button(mb_left))
{
	if (drag_object != noone)
	{
		drag_object.x = mouse_x + xrelative;
		drag_object.y = mouse_y + yrelative;
	}
}