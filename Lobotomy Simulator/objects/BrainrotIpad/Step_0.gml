if mouse_check_button_pressed(mb_left) {
	if point_in_rectangle(mouse_x, mouse_y, x + rotarea * 256 - 64, y - 64, x + rotarea * 256 + 64, y + 64) {
		global.addamountmulti = 1
		global.starsadd = 2
		
		instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
	}
	else {
		var clickwrong = false
		
		for (var i = -1; i < 2; i++) {
			if point_in_rectangle(mouse_x, mouse_y, x + i * 256 - 64, y - 64, x + i * 256 + 64, y + 64) {
				clickwrong = true
			}
			if i + 1 == rotarea {
				i += 1
			}
		}
		
		if clickwrong {
			global.addamountmulti = 0
			global.starsadd = 1
		
			instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
		}
	}
}