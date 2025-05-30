if game_get_speed(gamespeed_fps) == 2 {
	draw_sprite_ext(HitStopExplosion, 0, x, y, 16, 16, 0, c_white, 1)
	
	draw_set_halign(fa_center)
	draw_text(x, y - 96, string(global.addamountmulti) + "X MULTI")
}

if phase < 3 {
	draw_set_color(c_orange)
	draw_circle(x, y, 32, false)
	draw_set_color(c_red)
	draw_circle(x, y, 16, false)
}
else {
	draw_self()
}

ResetDraw()