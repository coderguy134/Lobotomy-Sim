var surface_distort = surface_create(room_width,room_height);
surface_set_target(surface_distort)

    draw_clear_alpha(COLOUR_FOR_NO_MOVE,0)

    // Anything we draw here will distort the screen
    draw_sprite(manager_effect,0,x1,x2)
	//draw_sprite(manager_effect,0,x2,y2)
	//draw_sprite(manager_effect,0,x3,y3)

surface_reset_target()

var surface_texture_page = surface_get_texture(surface_distort)

shader_set(Lobotomized)

    texture_set_stage(distortion_stage, surface_texture_page);
    draw_surface(application_surface,0,0)

shader_reset()

surface_free(surface_distort) // always remember to remove the surface from memory 