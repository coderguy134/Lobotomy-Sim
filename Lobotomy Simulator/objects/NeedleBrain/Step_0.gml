direction = point_direction(x, y, targetpos, y)

if abs(targetpos - x) < speed {
	if y == 320 {
		speed = random_range(1,5)
	}
	if y == 192 {
		speed = random_range(4,8)
	}
	if y == 64 {
		speed = random_range(8,20)
	}
	
	x = targetpos
	
	if targetpos == 864 {
		targetpos = 96
	}
	else {
		targetpos = 864
	}
}