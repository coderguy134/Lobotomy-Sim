if game_get_speed(gamespeed_fps) == 2 {
	draw_sprite_ext(HitStopExplosion, 0, x + dcos(point_direction(x, y, manager.x, manager.y)) * 48, y + dsin(point_direction(x, y, manager.x, manager.y)) * 48, 16, 16, 0, c_white, 1)
}

draw_self()