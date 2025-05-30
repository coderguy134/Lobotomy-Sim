if phase == 1 {
	if abs(targetpos - x) < abs(speed) {
		x = targetpos
	
		if targetpos == 864 {
			targetpos = 96
			speed = -10
		}
		else {
			targetpos = 864
			speed = 10
		}
	}
}
if phase == 2 {
	if abs(targetpos - y) < abs(speed) {
		y = targetpos
	
		if targetpos == 416 {
			targetpos = 96
			speed = -10
		}
		else {
			targetpos = 416
			speed = 10
		}
	}
}
if phase == 3 {
	speed = 0
	
	if image_xscale > 2 {
		image_angle += rotspeed
		image_xscale -= 0.1
		image_yscale -= 0.1
	}
	else {
		if point_in_rectangle(NeedleTarget.x, NeedleTarget.y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
			if point_distance(x, y, NeedleTarget.x, NeedleTarget.y) > 32 {
				global.addamountmulti = 1
			}
			else if point_distance(x, y, NeedleTarget.x, NeedleTarget.y) > 16 {
				global.addamountmulti = 2
			}
			else {
				global.addamountmulti = 3
			}
			
			if impact == 1 {
				layer_shader("Instances", -1)
				layer_shader("Background", -1)
		
				game_set_speed(60, gamespeed_fps)
			
				instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
			}
		
			if impact == 0 {
				layer_shader("Instances", FullBlack)
				layer_shader("Background", FullWhite)
	
				game_set_speed(2, gamespeed_fps)
			
				impact = 1
			}
		}
		else {
			global.addamountmulti = 0
			
			instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
		}
	}
}

if mouse_check_button_pressed(mb_left) {
	phase += 1
	
	if phase == 2 {
		y = 96
		targetpos = 416
		speed = 10
		direction = 270
	}
}