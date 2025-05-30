if impact == 1 {
	layer_shader("Needle", -1)
	layer_shader("Instances", -1)
	layer_shader("Background", -1)
		
	game_set_speed(60, gamespeed_fps)
			
	instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
}

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

if point_distance(x, y, target_x, target_y) <= 10 and destroy == false {
	done = true
	speed = 0
	if position_meeting(x, y, NeedleBrain) {
		if impact == 0 {
			layer_shader("Needle", FullBlack)
			layer_shader("Instances", FullBlack)
			layer_shader("Background", FullWhite)
	
			game_set_speed(2, gamespeed_fps)
	
			global.addamountmulti = instance_position(x, y, NeedleBrain).multi
			global.starsadd = global.addamountmulti + 1
			
			impact = 1
		}
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
	instance_create_layer(480, 410, "Needle", NeedleThrow, {tries : tries - 1})
}