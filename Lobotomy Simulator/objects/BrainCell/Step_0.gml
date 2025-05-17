if count > 0 {
	grav += 0.5

	image_angle += (abs(grav - 0.5) * 3) + xvel

	y += grav
	x += xvel

	if y > ground {
		if xvel < 0.2 and xvel > -0.2 {
			xvel = 0
		}
	
		grav = -grav + 2.5
		xvel -= sign(xvel) * 0.2
	
		y = ground
	
		if grav > 0 {
			grav = 0
		}
	}

	if xvel == 0 and grav == 0 {
		count -= 1
	}
}
else {
	direction = point_direction(x, y, 64, 32)
	speed = -count

	count -= 0.5
	
	if distance_to_point(64, 32) < speed {
		global.braincells += value
		instance_destroy()
	}
}