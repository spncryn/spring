/// @description Draw profile picture

// Draw white circular border
draw_circle_colour(x, y, 52, c_white, c_white, false)

// Create surface and set target
if !surface_exists(surf) surf = surface_create(360, 480)
surface_set_target(surf)

	// Draw background rectangle
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true)
	draw_set_alpha(0)
	draw_rectangle(x - 54, y - 54, x + 54, y + 54, false)

	// Draw masking circle
	draw_set_alpha(1)
	draw_circle(x, y, 50, false)
	gpu_set_blendenable(true)
	gpu_set_colorwriteenable(true,true,true,true)

	// Draw sprite, and cut out circular mask
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha)
	gpu_set_alphatestenable(true)
	draw_sprite_ext(sprite_index, global.currentindex, x, y, 0.4, 0.4, 0, c_white, 1)
	gpu_set_alphatestenable(false)
	gpu_set_blendmode(bm_normal)  
	
surface_reset_target()
		 
// Draw final sprite
draw_surface_ext(surf, 0, 0, 1, 1, 0, image_blend, 1)
