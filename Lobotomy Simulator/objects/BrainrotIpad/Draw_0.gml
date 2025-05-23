draw_self()

for (var i = -1; i < 2; i++) {
	draw_sprite_ext(BrainrotIcons, choices[i + 1], x + i * 256, y - 24, 2, 2, 0, c_white, 1)
}