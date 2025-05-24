direction = point_direction(x, y, targetpos, y)

if abs(targetpos - x) < 5 {
	if targetpos == 864 {
		targetpos = 96
	}
	else {
		targetpos = 864
	}
	startpos = x
}

if mouse_check_button_pressed(mb_left) and y == 448 {
	instance_create_layer(mouse_x, mouse_y, "Needle", NeedleThrow)
}