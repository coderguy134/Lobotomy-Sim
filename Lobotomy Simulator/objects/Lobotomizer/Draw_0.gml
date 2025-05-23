if game_get_speed(gamespeed_fps) == 2 {
	draw_sprite_ext(HitStopExplosion, 0, x + dcos(point_direction(x, y, Customer.x, Customer.y)) * 48, y + dsin(point_direction(x, y, Customer.x, Customer.y)) * 48, 8, 8, 0, c_white, 1)
}

draw_self()