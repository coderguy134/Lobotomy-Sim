if mouse_check_button_pressed(mb_left) and thrown == false {
		target_x = mouse_x
		target_y = mouse_y
		thrown = true
		speed = 14
}

if point_distance(x, y, target_x, target_y) > 10 and thrown == true {
	direction = point_direction(x,y,target_x,target_y)
	image_xscale -= 0.16
	image_yscale -= 0.16
}

if point_distance(x, y, target_x, target_y) <= 10 {
	done = true
	speed = 0
	if place_meeting(x, y, NeedleBrain) {
		// end game
	}
	
	else {
		destroy = true
	}
}

if destroy == true {
	image_alpha -= 0.05
}

if image_alpha <= 0 {
	instance_destroy()
	instance_create_layer(480, 410, "Instances", NeedleThrow)
}