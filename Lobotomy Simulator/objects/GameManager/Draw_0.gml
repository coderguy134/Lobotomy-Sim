draw_set_color(make_color_rgb(181, 145, 0))
draw_rectangle(4, 4, 192 + (string_length(string(global.braincells)) - 1) * 26.5, 56, false)
draw_set_color(make_color_rgb(110, 71, 43))
draw_rectangle(6, 6, 190 + (string_length(string(global.braincells)) - 1) * 26.5, 54, false)

draw_sprite_ext(BrainCells, 0, 64, 32, 8, 8, 0, c_white, 1)

draw_set_color(c_black)
draw_set_valign(fa_middle)
draw_set_font(HighQuality)
draw_text_transformed(128, 32, "- " + string(global.braincells), 2.5, 2.5, 0)

draw_set_color(make_color_rgb(181, 145, 0))
draw_rectangle(room_width - 256, 128, room_width - 8, 8, false)
draw_set_color(make_color_rgb(110, 71, 43))
draw_rectangle(room_width - 254, 126, room_width - 10, 10, false)

draw_set_color(c_black)
draw_set_valign(fa_top)
draw_text_transformed(room_width - 252, 10, "Reviews -", 2.5, 2.5, 0)
draw_set_font(SmallText)
draw_text_ext_transformed(room_width - 252, 52, global.review, 24, 240, 1, 1, 0)

draw_set_color(make_color_rgb(181, 145, 0))
draw_rectangle(room_width / 2 - 128, 4, room_width / 2 + 128, 56, false)
draw_set_color(make_color_rgb(110, 71, 43))
draw_rectangle(room_width / 2 - 126, 6, room_width / 2 + 126, 54, false)

for (var i = 0; i < min(ceil(global.stars / 2), 5); i++) {
	if global.stars < 11 + i * 2 {
		draw_sprite_ext(Star, min(global.stars - (i * 2) - 1, 1), room_width / 2 - 118 + (i * 48), 30, 3, 3, 0, c_white, 1)
	}
	else if global.stars < 21 + i * 2 {
		draw_sprite_ext(Star, min(global.stars - (i * 2) - 9, 3), room_width / 2 - 118 + (i * 48), 30, 3, 3, 0, c_white, 1)
	}
	else if global.stars < 31 + i * 2 {
		draw_sprite_ext(Star, min(global.stars - (i * 2) - 17, 5), room_width / 2 - 118 + (i * 48), 30, 3, 3, 0, c_white, 1)
	}
	else if global.stars < 41 + i * 2 {
		draw_sprite_ext(Star, min(global.stars - (i * 2) - 25, 7), room_width / 2 - 118 + (i * 48), 30, 3, 3, 0, c_white, 1)
	}
	else if global.stars < 51 + i * 2 {
		draw_sprite_ext(Star, min(global.stars - (i * 2) - 33, 9), room_width / 2 - 118 + (i * 48), 30, 3, 3, 0, c_white, 1)
	}
	else {
		draw_sprite_ext(Star, min(global.stars - (i * 2) - 41, 11), room_width / 2 - 118 + (i * 48), 30, 3, 3, 0, c_white, 1)
	}
}

ResetDraw()