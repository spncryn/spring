/// @link https://www.reddit.com/r/gamemaker/comments/6eai42/help_draggable_objects_issue/did23hv/?st=J5RS4NAG&sh=869c8985
var top_object  = argument0;
var object_type = argument1;

if instance_exists(object_type) {
	if top_object.depth = 2 exit

	top_object.depth = 2
	with object_type {
		if id = top_object
			continue;

		depth ++
	}
}
