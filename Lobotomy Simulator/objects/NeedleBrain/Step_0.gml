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