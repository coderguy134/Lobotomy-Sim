if x < GeometryPlayer.x and playsfx {
	if GeometryPlayer.grav != 0 and not collision_line(x, y, GeometryPlayer.x, GeometryPlayer.y, GeometryBlock, false, true) and image_yscale == 1 and image_angle == 0 {
		audio_play_sound(RockOnTheGround, 0, 0)
	}
	playsfx = false
}